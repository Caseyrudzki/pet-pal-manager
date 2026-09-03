table 50300 PetMaster
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Pet ID"; Integer)
        {
            Caption = 'Pet ID';
            AutoIncrement = true;
        }
        field(2; "Pet Name"; Text[100])
        {
            Caption = 'Pet Name';
        }
        field(3; "Pet Type"; Code[20])
        {
            Caption = 'Pet Type';
            TableRelation = PetType;
        }
        field(4; "Pet Breed"; Code[20])
        {
            Caption = 'Pet Breed';
            TableRelation = PetBreed.Code where("Pet Type" = field("Pet Type"));
        }
        field(5; "Pet Image"; MediaSet)
        {
            Caption = 'Pet Image';
        }
        field(6; "Pet Color"; Option)
        {
            Caption = 'Pet Color';
            OptionMembers = "",Black,Grey,White,Brown,Mixed,Other;
        }
        field(7; "Last Vaccinated Date"; Date)
        {
            Caption = 'Last Vaccinated Date';
        }
        field(8; "Pet Condition"; Code[20])
        {
            Caption = 'Pet Condition';
            TableRelation = PetCondition;
        }
        field(9; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = Available,Reserved,Sold;
        }
    }

    keys
    {
        key(PK; "Pet ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}