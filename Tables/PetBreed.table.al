table 50316 PetBreed
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Pet Type"; Code[20])
        {
            Caption = 'Pet type';
            TableRelation = PetType.Code;

        }
        field(2; "Code"; Code[20])
        {
            Caption = 'Code';

        }
        field(3; "Description"; Text[100])
        {
            Caption = 'Description';

        }
    }

    keys
    {
        key(PK; "Pet Type", Code)
        {
            Clustered = true;
        }
    }



}