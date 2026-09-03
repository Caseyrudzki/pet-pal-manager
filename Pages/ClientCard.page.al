page 50317 ClientCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Client;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Client No"; Rec."Client No")
                {
                    ApplicationArea = all;
                    Caption = 'Client No.';
                }
                field("Client Name"; Rec."Client Name")
                {
                    ApplicationArea = all;
                    Caption = 'Client Name';
                }
                field("Client Address"; Rec."Client Address")
                {
                    ApplicationArea = all;
                    Caption = 'Client Address';
                }
                field("Phone No"; Rec."Phone No")
                {
                    ApplicationArea = all;
                    Caption = 'Phone No.';
                }
                field("Client Email"; Rec."Client Email")
                {
                    ApplicationArea = all;
                    Caption = 'Client Email';
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
        myInt: Integer;
}