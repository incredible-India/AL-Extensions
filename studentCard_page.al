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

                field("Photo"; Rec.Photo)
                {


                }


            }

            group("Student Contact Detail")
            {
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