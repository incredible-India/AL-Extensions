report 50101 StudentReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    // DefaultLayout = RDLC;
    // RDLCLayout = 'mylayout.rdl';
    //RDLCLayout = 'mylayout.rdl';

    dataset
    {
        dataitem(MyStudent; MyStudent)
        {
            column(Student_ID; "Student ID")
            {

            }

            column(First_Name; "First Name")
            {

            }

            column(Last_Name; "Last Name")
            {

            }

            column(Address; "Address")
            {

            }
            column(Email; "Email")
            {

            }
            column(GPA; "GPA")
            {

            }
            column(AGE; "AGE")
            {

            }
            column(Phone; "Phone")
            {

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