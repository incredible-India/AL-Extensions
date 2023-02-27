page 50101 MyStudentPage
{
    PageType = List;
    CardPageId = StudentCard;
    Editable = true;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = MyStudent;


    layout
    {
        area(Content)
        {
            repeater("Student Info")
            {
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;

                }

                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;

                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;

                }

                field("Email"; Rec."Email")
                {
                    ApplicationArea = All;

                }

                field("Address"; Rec."Address")
                {
                    ApplicationArea = All;

                }

                field("Phone"; Rec."Phone")
                {
                    ApplicationArea = All;

                }
                field("GPA"; Rec."GPA")
                {
                    ApplicationArea = All;

                }
                field("Age"; Rec."Age")
                {
                    ApplicationArea = All;

                }
                field("Class"; Rec."Class")
                {
                    ApplicationArea = All;

                }

                field("Photo"; Rec."Photo")
                {
                    ApplicationArea = All;

                }


            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Add Auto Student")
            {
                ApplicationArea = All;
                Image = Add;

                trigger OnAction()
                begin
                    // for myInt := 1 to 20 do begin
                    //     rec."Student ID" := Format(myInt);
                    //     rec."First Name" := Format('Student') + Format(myInt);
                    //     rec."Last Name" := Format('Student_Last') + Format(myInt);
                    //     rec."Class" := Format(myInt);
                    //     rec."Email" := Format('Student') + Format(myInt) + Format('@gmail.com');
                    //     rec.Phone := Format('8') + Format(myInt) + Format('044705') + Format(myInt);
                    //     rec.AGE := Random(99) MOD 100;
                    //     if rec.Age = 0 then
                    //         rec.Age := 5;
                    //     rec.GPA := Random(100) MOD 10;
                    //     if rec.GPA = 0 then
                    //         rec.GPA := 3.43;

                    //     rec.Address := Format('Student_Address') + Format(myInt);
                    //     rec.Insert;





                end;

                //end;
            }

            action(ExportPermissionSet)
            {
                Promoted = true;
                PromotedCategory = New;
                Image = Export;
                trigger OnAction();
                begin
                    Xmlport.Run(50101, false, false);
                end;
            }
            action("Import Files")
            {
                Promoted = true;
                PromotedCategory = New;
                Image = Import;
                trigger OnAction();


                begin
                    Xmlport.Run(50101, false, true);
                end;
            }

        }
    }

    var
        myInt: Integer;

}