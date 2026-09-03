table 50304 PetSalesLine
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Document No"; Code[20])
        {
            Caption = 'Document Number';
            TableRelation = PetSalesHeader;
        }
        field(2; "Line No"; Integer)
        {
            Caption = 'Line Number';

        }
        field(3; "Pet ID"; Code[20])
        {
            Caption = 'Pet ID';
            TableRelation = PetMaster where(Status = const(Available));
            trigger OnValidate()
            var
                PetMaster: Record PetMaster;
            begin
                if PetMaster.Get("Pet ID") then begin
                    "Pet Name" := PetMaster."Pet Name";
                    "Pet Type" := PetMaster."Pet Type";
                    "Pet Breed" := PetMaster."Pet Breed";
                end;
            end;
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
        key(PK; "Document No", "Line No")
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