table 50301 Client
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Client No"; Code[20])
        {
            Caption = 'Client Number';
        }
        field(2; "Client Name"; Text[100])
        {
            Caption = 'Client Name';
        }
        field(3; "Client Address"; Text[100])
        {
            Caption = 'Client Address';
        }
        field(4; "Phone No"; Text[20])
        {
            Caption = 'Phone Number';
        }
        field(5; "Client Email"; Text[80])
        {
            Caption = 'Client Email';
        }
    }

    keys
    {
        key(PK; "Client No")
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