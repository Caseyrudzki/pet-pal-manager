page 50315 PetCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = PetMaster;
    CardPageId = PetCard;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Pet ID"; Rec."Pet ID")
                {
                    ApplicationArea = All;
                    Caption = 'Pet ID';
                    Editable = false;
                }
                field("Pet Name"; Rec."Pet Name")
                {
                    ApplicationArea = All;
                    Caption = 'Pet Name';
                }
                field("Pet Type"; Rec."Pet Type")
                {
                    ApplicationArea = All;
                    Caption = 'Pet Type';

                    trigger OnValidate()

                    begin
                        CurrPage.Update(True);
                    end;
                }
                field("Pet Breed"; Rec."Pet Breed")
                {
                    ApplicationArea = All;
                    Caption = 'Pet Breed';
                }
                part(PetPicture; PetPicture)
                {
                    ApplicationArea = All;
                    Editable = false;
                    SubPageLink = "Pet ID" = field("Pet ID");
                }
                field("Pet Color"; Rec."Pet Color")
                {
                    ApplicationArea = All;
                    Caption = 'Pet Color';
                }
                field("Last Vaccinated Date"; Rec."Last Vaccinated Date")
                {
                    ApplicationArea = All;
                    Caption = 'Last Vaccinated Date';
                }
                field("Pet Status"; Rec.Status)
                {
                    ApplicationArea = All;
                    Caption = 'Pet Status';
                    Editable = false;
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        OverrideImg: Label 'Do you want to override the exisiting img?';
        DeleteImg: Label 'Do you want to delete the existing img?';

    trigger OnInsertRecord(BelowXRec: Boolean): Boolean

    begin
        if Rec."Pet ID" = ' ' then
            Error('Pet ID cannot be empty');
    end;
}