page 50103 STUDETPIC
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = MyStudent;

    layout
    {
        area(Content)
        {
            group("Student Picture")
            {
                field("Student Image"; rec.Photo)
                {
                    Editable = true;
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}