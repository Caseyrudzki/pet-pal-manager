page 50311 PetPicture
{
    PageType = CardPart;
    Caption = 'Pet picture';
    DeleteAllowed = false;
    InsertAllowed = false;
    LinksAllowed = false;
    SourceTable = PetMaster;

    layout
    {
        area(Content)
        {

            field("Pet Image"; Rec."Pet Image")
            {
                ApplicationArea = all;
                ToolTip = 'Pet Image';

            }

        }
    }

    actions
    {
        area(Processing)
        {
            action(ImportPicture)
            {
                ApplicationArea = all;
                Caption = 'Import Picture';
                Image = Import;
                Visible = HideActions = False;
                trigger OnAction()
                begin
                    ImportFromDevice();

                end;
            }
            action(DeletePicture)
            {
                ApplicationArea = all;
                Caption = 'Delete image';
                Image = Delete;
                Visible = HideActions = false;
                Enabled = DeleteExportEnabled;

                trigger OnAction()
                begin
                    DeleteItemImg();
                end;
            }
        }
    }

    trigger OnAfterGetCurrRecord()

    begin
        SetEditableOnImgActions();

    end;

    var
        HideActions: Boolean;
        OverrideImgQst: Label 'The existing image will be overrided, continue?';
        DeleteImg: Label 'Are you sure you want to delete the picture?';
        SelectImgTxt: Label 'Select image to upload';
        DeleteExportEnabled: Boolean;
        MustSpecifyDescErr: Label 'You must specify a description for the image before uploading';

    procedure TakeNewImg()

    begin
        Rec.Find();
        Rec.TestField("Pet ID");
    end;


    procedure ImportFromDevice()
    var
        FileManagement: Codeunit "File Management";
        FileName: Text;
        ClientFileName: Text;
        Instr: InStream;
    begin
        Rec.Find();
        Rec.TestField("Pet ID");
        if Rec."Pet Image".Count > 0 then
            if not Confirm(OverrideImgQst) then
                Error('');
        ClientFileName := '';
        UploadIntoStream(SelectImgTxt, '', '', ClientFileName, Instr);
        if ClientFileName <> '' then
            FileName := FileManagement.GetFileName(ClientFileName);
        if FileName = '' then
            Error('');
        Clear(Rec."Pet Image");
        Rec."Pet Image".ImportStream(Instr, FileName);
        Rec.Modify(True);
    end;

    local procedure SetEditableOnImgActions()

    begin
        DeleteExportEnabled := Rec."Pet Image".Count <> 0;
    end;

    procedure DeleteItemImg()
    begin
        Rec.TestField("Pet ID");
        if not Confirm(DeleteImg) then
            exit;
        Clear(Rec."Pet Image");
        Rec.Modify(true);
    end;
}