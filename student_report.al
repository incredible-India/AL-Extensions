report 50101 StudentReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'mylayout.rdl';
    //RDLCLayout = 'mylayout.rdl';

    dataset
    {
        dataitem(DataItemName; MyStudent)
        {
            column(Student_ID; "Student ID")
            {
                IncludeCaption = true;
            }

            column(First_Name; "First Name")
            {
                IncludeCaption = true;
            }

            column(Last_Name; "Last Name")
            {
                IncludeCaption = true;
            }

            column(Address; "Address")
            {
                IncludeCaption = true;
            }
            column(Email; "Email")
            {
                IncludeCaption = true;
            }
            column(GPA; "GPA")
            {
                IncludeCaption = true;
            }
            column(AGE; "AGE")
            {
                IncludeCaption = true;
            }
            column(Phone; "Phone")
            {
                IncludeCaption = true;
            }

        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {


                group(GroupName)
                {
                    field(MyVar; MyVar)
                    {
                        ApplicationArea = All;

                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    // rendering
    // {
    //     layout(LayoutName)
    //     {
    //         Type = RDLC;
    //         LayoutFile = 'mylayout.rdl';
    //     }
    // }

    var
        MyVar: Boolean;
}