page 50316 PetList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = PetMaster;

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
                field("Pet Color"; Rec."Pet Color")
                {
                    ApplicationArea = all;
                }
                field("Last Vaccinated Date"; Rec."Last Vaccinated Date")
                {
                    ApplicationArea = all;
                }
                field("Pet Condition"; Rec."Pet Condition")
                {
                    ApplicationArea = all;
                }
                field("Status"; Rec."Status")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
            }
        }
        area(Factboxes)
        {
            part(PetImg; PetPicture)
            {
                ApplicationArea = all;
                SubPageLink = "Pet ID" = field("Pet ID");
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action(CardAction)
            {
                ApplicationArea = All;
                Image = EditLines;
                RunObject = page "PetCard";
                RunPageLink = "Pet ID" = field("Pet ID");

            }
        }
    }
}