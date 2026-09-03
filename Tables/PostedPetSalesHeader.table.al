table 50305 PostedPetSalesHeader
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Document Number"; Code[20])
        {
            Caption = 'Document Number';
        }
        field(2; "Client Number"; Code[20])
        {
            Caption = 'Client Number';
            TableRelation = Client;
        }
        field(3; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
    }

    keys
    {
        key(PK; "Document Number")
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