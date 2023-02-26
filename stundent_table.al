table 50101 MyStudent
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student ID"; CODE[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "First Name"; Text[30])
        {
            DataClassification = ToBeClassified;

        }

        field(3; "Last Name"; Text[30])
        {
            DataClassification = ToBeClassified;

        }

        field(4; "Class"; Text[30])
        {
            DataClassification = ToBeClassified;

        }
        field(5; "Email"; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(6; "Phone"; Text[20])
        {
            DataClassification = ToBeClassified;

        }

        field(7; "Address"; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(8; "GPA"; Decimal)
        {
            DataClassification = ToBeClassified;

        }

        field(9; "AGE"; Integer)
        {
            DataClassification = ToBeClassified;

        }

        field(10; "Photo"; Blob)
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(Key1; "Student ID")
        {
            Clustered = true;
        }
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