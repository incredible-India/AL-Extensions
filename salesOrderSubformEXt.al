pageextension 50104 salesorderExtension extends "Sales Order Subform"
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