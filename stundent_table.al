table 50101 MyStudent
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student ID"; CODE[20])
        {
            Numeric = true;
            NotBlank = true;
            DataClassification = ToBeClassified;

        }
        field(2; "First Name"; Text[30])
        {
            NotBlank = true;
            DataClassification = ToBeClassified;

        }

        field(3; "Last Name"; Text[30])
        {
            NotBlank = true;
            DataClassification = ToBeClassified;

        }

        field(4; "Class"; Text[30])
        {
            NotBlank = true;
            DataClassification = ToBeClassified;

        }
        field(5; "Email"; Text[50])
        {
            NotBlank = true;

            DataClassification = ToBeClassified;

        }
        field(6; "Phone"; Text[20])
        {
            Numeric = false;
            CharAllowed = '() +0123456789';
            DataClassification = ToBeClassified;

        }

        field(7; "Address"; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(8; "GPA"; Decimal)
        {
            NotBlank = true;
            MaxValue = 10;
            MinValue = 1;
            DataClassification = ToBeClassified;

        }

        field(9; "AGE"; Integer)
        {
            MaxValue = 99;
            MinValue = 1;
            DataClassification = ToBeClassified;

        }

        field(10; "Photo"; Blob)
        {
            Subtype = Bitmap;
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
    //: Record  Mystudent;

    trigger OnInsert()
    begin
        //   //  validation for the first name
        //     if StrLen(Rec."First Name") < 1 then
        //         Error('%1 cannot be less than One Char', FieldCaption("First Name"));
        //     //validation for the age
        //     if rec.AGE > 99 then
        //         Error('%1 cannot be grater than 99', FieldCaption("Age"));
        //     if rec.AGE < 1 then
        //         Error('%1 connnot be less than 1', FieldCaption(Age));

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