table 50310 PetSalesHeader
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Document No"; Code[20])
        {
            Caption = 'Document Number';

        }
        field(2; "Client No"; Code[20])
        {
            Caption = 'Client Number';
            TableRelation = Client."Client No";

        }
        field(3; "Posting Date"; Date)
        {
            Caption = 'Posting Date';

        }
        field(4; "Status"; Option)
        {
            Caption = 'Status';
            OptionMembers = Open,Released,Posted;
        }
    }

    keys
    {
        key(PK; "Document No")
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