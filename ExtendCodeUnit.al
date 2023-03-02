codeunit 50101 St
{


    EventSubscriberInstance = StaticAutomatic;

    var
        v: Record "Sales Line";

    [EventSubscriber(ObjectType::Table, Database::"Item Journal Line", 'OnAfterCopyItemJnlLineFromSalesLine', '', true, true)]
    local procedure OnAfterCopyItemJnlLineFromSalesLine(var ItemJnlLine: Record "Item Journal Line"; SalesLine: Record "Sales Line")
    begin
        ItemJnlLine.st := SalesLine.st;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnAfterInitItemLedgEntry', '', true, true)]
    local procedure OnAfterInitItemLedgEntry(var NewItemLedgEntry: Record "Item Ledger Entry"; ItemJournalLine: Record "Item Journal Line")
    begin
        NewItemLedgEntry.st := ItemJournalLine.st;
    end;

    //additional code 
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterUpdateSalesHeader', '', true, true)]
    local procedure OnAfterUpdateSalesHeader(VAR CustLedgerEntry: Record "Cust. Ledger Entry"; VAR SalesInvoiceHeader: Record "Sales Invoice Header"; VAR SalesCrMemoHeader: Record "Sales Cr.Memo Header"; GenJnlLineDocType: Integer)
    begin

        CustLedgerEntry.st := v.st;

    end;


}