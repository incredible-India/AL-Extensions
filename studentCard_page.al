page 50102 StudentCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = MyStudent;

    layout
    {
        area(Content)
        {
            group("Student Deatils")

            {
                field("Student ID"; Rec."Student ID")
                {
                    Caption = 'Student ID';
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;

                }

                field("First Name"; Rec."First Name")
                {
                    Caption = 'First Name';
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;


                }
                field("Last Name"; Rec."Last Name")
                {
                    Caption = 'Last Name';
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;

                }


                field("GPA"; Rec."GPA")
                {
                    Caption = 'GPA';
                    ApplicationArea = All;
                    NotBlank = true;
                    ShowMandatory = true;
                    MinValue = 1;
                    MaxValue = 10;

                }
                field("Age"; Rec."Age")
                {
                    Caption = 'Age';
                    ApplicationArea = All;
                    NotBlank = true;
                    ShowMandatory = true;
                    MinValue = 1;
                    MaxValue = 99;

                }
                field("Class"; Rec."Class")
                {
                    Caption = 'Class';
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;

                }

                field("Photo"; Rec.Photo)
                {
                    Caption = 'Photo';

                }


            }

            group("Student Contact Detail")
            {
                field("Email"; Rec."Email")
                {
                    Caption = 'Email';
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;


                }

                field("Address"; Rec."Address")
                {
                    Caption = 'Address';
                    ApplicationArea = All;
                    ShowMandatory = true;


                }

                field("Phone"; Rec."Phone")
                {
                    Caption = 'Phone';
                    ApplicationArea = All;
                    ShowMandatory = true;

                }
            }
        }

        area(FactBoxes)
        {
            part("StudentImg"; STUDETPIC)
            {
                SubPageLink = "Student ID" = FIELD("Student ID");
                Editable = true;

            }
        }





    }



    actions
    {
        area(Processing)
        {
            action("Student List")
            {
                ApplicationArea = All;
                RunObject = page MyStudentPage;
                Image = List;

                trigger OnAction()
                begin


                end;
            }

            action("Import/Export Image")
            {
                Image = Add;
                RunObject = Page STUDETPIC;

            }

            action("Report")
            {
                RunObject = Report StudentReport;
                Image = Report;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        if Rec.Photo.HasValue = FALSE then begin
            mynotification.Message('This Student has no picture..');

            mynotification.Send();
        end;

    end;

    var
        myInt: Integer;
        mynotification: Notification;
}