pageextension 50102 SalesInvoiceSubForm extends "Posted Sales Invoice Subform"
{
    layout
    {
        // Add changes to page layout here
        addlast(Control1)
        {
            field(st; Rec.st) { }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}