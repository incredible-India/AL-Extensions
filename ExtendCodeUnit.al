codeunit 50101 St
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Table, Database::"Item Journal Line", 'OnAfterCopyItemJnlLineFromSalesLine', '', true, true)]
    procedure OnAfterCopyItemJnlLineFromSalesLine(var ItemJnlLine: Record "Item Journal Line"; SalesLine: Record "Sales Line")
    begin
        ItemJnlLine.st := SalesLine.st;
        // ItemLedgEntry.st :=;
    end;

    [EventSubscriber(ObjectType::CodeUnit, Codeunit::"Item Jnl.-Post Line", 'OnAfterInitItemLedgEntry', '', true, true)]
    procedure OnAfterInitItemLedgEntry(var NewItemLedgEntry: Record "Item Ledger Entry"; ItemJournalLine: Record "Item Journal Line"; var ItemLedgEntryNo: Integer)
    begin

        ItemJournalLine.st := NewItemLedgEntry.st;

        //   CustLedgerEntry.st := GenJournalLine.st;
    end;

}