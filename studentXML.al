xmlport 50101 StudentXML
{
    Format = VariableText;
    Direction = Both;


    //FormatEvaluate = Legacy;
    schema
    {
        textelement(Root)
        {
            tableelement(MyStudent; MyStudent)
            {
                fieldattribute(StudentID; MyStudent."Student ID")
                {

                }
                fieldattribute(FirstName; MyStudent."First Name")
                {

                }
                fieldattribute(LastName; MyStudent."Last Name")
                {

                }
                fieldattribute(Class; MyStudent.Class)
                {

                }
                fieldattribute(Phone; MyStudent.Phone)
                {

                }
                fieldattribute(Address; MyStudent.Address)
                {

                }
                fieldattribute(GPA; MyStudent.GPA)
                {

                }
                fieldattribute(AGE; MyStudent.AGE)
                {

                }
                fieldattribute(Email; MyStudent.Email)
                {

                }
            }
        }
    }

    // requestpage
    // {
    //     layout
    //     {
    //         area(content)
    //         {
    //             group(GroupName)
    //             {
    //                 field(myInt; myInt)
    //                 {

    //                 }
    //             }
    //         }
    //     }

    //     actions
    //     {
    //         area(processing)
    //         {
    //             action(ActionName)
    //             {

    //             }
    //         }
    //     }
    // }

    // var
    //     myInt: Boolean;
}