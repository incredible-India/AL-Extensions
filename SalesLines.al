pageextension 50123 SalesLines extends "Sales Lines"
{
    layout
    {
        addlast(Control1)
        {
            field(st; Rec.st) { }
        }
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}