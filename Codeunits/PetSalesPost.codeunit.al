codeunit 50301 PetSalesPost
{
    procedure PostSalesDoc(var SalesHeader: Record PetSalesHeader)
    var
        SalesLine: Record PetSalesLine;
        PostedSalesHeader: Record PostedPetSalesHeader;
        PostedSalesLine: Record PostedPetSalesLine;
        PetMaster: Record PetMaster;
    begin
        PostedSalesHeader.TransferFields(SalesHeader);
        PostedSalesHeader.Insert(true);

        SalesLine.SetRange("Document No", SalesHeader."Document No");
        if SalesLine.FindSet() then
            repeat

                PostedSalesLine.TransferFields(SalesLine);
                PostedSalesLine.Insert(true);
                if PetMaster.Get(SalesLine."Pet ID") then begin
                    PetMaster.Status := PetMaster.Status::Sold;

                    if PetMaster.Modify(true) then
                        Message('Pet %1 status updated to sold.', PetMaster."Pet ID")
                    else
                        Error('Failed to update')
                end
                else
                    Error('Pet %1 not found in the database', PetMaster."Pet ID");
            until SalesLine.Next = 0;
        SalesLine.DeleteAll();
        SalesHeader.Delete();
    end;
}