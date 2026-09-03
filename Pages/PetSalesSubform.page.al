page 50319 PetSalesSubform
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = PetSalesLine;
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Pet ID"; Rec."Pet ID")
                {
                    ApplicationArea = all;
                }
                field("Pet Name"; Rec."Pet Name")
                {
                    ApplicationArea = all;
                }
                field("Pet Type"; Rec."Pet Type")
                {
                    ApplicationArea = all;
                }
                field("Pet Breed"; Rec."Pet Breed")
                {
                    ApplicationArea = all;
                }
                field("Price"; Rec."Price")
                {
                    ApplicationArea = all;
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
}