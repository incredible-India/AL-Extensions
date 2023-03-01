pageextension 50108 PostesSalesShipments extends "Posted Sales Shipments"
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