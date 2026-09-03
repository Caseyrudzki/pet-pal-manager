table 50306 PostedPetSalesLine
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Document Number"; Code[20])
        {
            Caption = 'Document Number';
            TableRelation = PostedPetSalesHeader;
        }
        field(2; "Line Number"; Integer)
        {
            Caption = 'Line Number';
        }
        field(3; "Pet ID"; Code[20])
        {
            Caption = 'Pet ID';
            TableRelation = PetMaster;
        }
        field(4; "Pet Name"; Text[100])
        {
            Caption = 'Pet Name';
            Editable = false;
        }
        field(5; "Pet Type"; Code[20])
        {
            Caption = 'Pet Type';
            Editable = false;
        }
        field(6; "Pet Breed"; Code[20])
        {
            Caption = 'Pet Breed';
            Editable = false;
        }
        field(7; "Price"; Decimal)
        {
            Caption = 'Price';
        }
    }

    keys
    {
        key(PK; "Document Number", "Line Number")
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