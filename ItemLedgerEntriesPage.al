pageextension 50110 ItemLedgerEntries extends "Item Ledger Entries"
{
    layout
    {


        addlast(Control1)
        {
            field(st; Rec.st)
            {

            }
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