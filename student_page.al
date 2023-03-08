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
                    Caption = 'Student ID';


                }

                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    Caption = 'First Name';

                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                    Caption = 'Last Name';

                }

                field("Email"; Rec."Email")
                {
                    ApplicationArea = All;
                    Caption = 'Email';

                }

                field("Address"; Rec."Address")
                {
                    ApplicationArea = All;
                    Caption = 'Address';

                }

                field("Phone"; Rec."Phone")
                {
                    ApplicationArea = All;
                    Caption = 'Phone';

                }
                field("GPA"; Rec."GPA")
                {
                    ApplicationArea = All;
                    Caption = 'GPA';

                }
                field("Age"; Rec."Age")
                {
                    ApplicationArea = All;
                    Caption = 'Age';

                }
                field("Class"; Rec."Class")
                {
                    ApplicationArea = All;
                    Caption = 'Class';

                }

                field("Photo"; Rec."Photo")
                {
                    ApplicationArea = All;
                    Caption = 'Age';

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





                    // end;

                end;
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

            action("Get Report")
            {

                Image = report;
                RunObject = report StudentReport;



            }

        }
    }

    var
        myInt: Integer;

}