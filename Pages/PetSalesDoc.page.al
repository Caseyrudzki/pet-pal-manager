page 50318 PetSalesDoc
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = PetSalesHeader;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Document No."; rec."Document No")
                {
                    ApplicationArea = all;
                }
                field("Client No."; rec."Client No")
                {
                    ApplicationArea = all;
                }
                field("Posting Date"; rec."Posting Date")
                {
                    ApplicationArea = all;
                }
                field("Status"; rec."Status")
                {
                    ApplicationArea = all;
                }
                part(SalesLine; PetSalesSubform)
                {
                    ApplicationArea = all;
                    SubPageLink = "Document No" = FIELD("Document No");

                }
            }
        }

    }

    actions
    {
        area(Processing)
        {
            action(PostDocument)
            {
                ApplicationArea = all;
                Caption = 'Post';
                Image = PostDocument;

                trigger OnAction()
                var
                    PetSalesPost: Codeunit PetSalesPost;
                begin
                    if Confirm('Are you sure you want to post the document?') then begin
                        PetSalesPost.PostSalesDoc(Rec);
                        Message('Document posted');
                    end;


                end;
            }
        }
    }
}