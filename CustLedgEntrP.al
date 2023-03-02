pageextension 50117 MyExtension extends "Customer Ledger Entries"
{
    layout
    {
        addafter("Customer No.")
        {
            field("st"; Rec.st) { }
        }

    }
}