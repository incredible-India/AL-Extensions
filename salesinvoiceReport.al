report 50102 SalesInvoiseReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;



    dataset
    {
        dataitem("Sales H"; "Sales Invoice Header")
        {
            RequestFilterFields = "No.";
            MaxIteration = 1;
            column(Bill_to_Address; "Bill-to Address")
            {

            }

            column(Bill_to_City; "Bill-to City")
            {

            }
            column(Bill_to_Name; "Bill-to Name") { }
            column(Sell_to_Address; "Sell-to Address") { }
            column(Sell_to_City; "Sell-to City") { }
            column(Sell_to_Customer_Name; "Sell-to Customer Name")
            { }

            column(Bill_to_Country_Region_Code; "Bill-to Country/Region Code") { }

            dataitem("Sales In"; "Sales Invoice Line")
            {

                DataItemTableView = SORTING("Document No.", "Line No.") ORDER(Ascending) WHERE(Type = FILTER(Item));
                //   MaxIteration = 1;
                DataItemLinkReference = "Sales H";
                DataItemLink = "Document No." = FIELD("No.");
                column(No_; "No.") { }
                column(Amount; Amount) { }
                column(Amount_Including_VAT; "Amount Including VAT") { }
                column(Description; Description) { }
                column(Type; Type) { }
                column(Unit_Cost; "Unit Cost") { }

                column(Line_Discount_Amount; "Line Discount Amount") { }

                column(Quantity; Quantity) { }




                dataitem("Country"; "Country/Region")
                {
                    DataItemLinkReference = "Sales H";
                    DataItemLink = "Code" = FIELD("Bill-to Country/Region Code");

                    MaxIteration = 1;
                    column("Code"; "Code")
                    {

                    }
                    column(County_Name; "County Name")
                    {


                    }
                    column(Name; Name) { }

                    column(EU_Country_Region_Code; "EU Country/Region Code") { }

                }


            }


        }

        // dataitem("Sales In"; "Sales Invoice Line")
        // {
        //     DataItemTableView = SORTING("Document No.", "Line No.") ORDER(Ascending) WHERE(Type = FILTER(Item));
        //     MaxIteration = 1;
        //     // DataItemLinkReference = "Sales Invoice Header';
        //     // DataItemLink ="Document No."=FIELD("No.");
        //     column(No_; "No.") { }
        //     column(Amount; Amount) { }
        //     column(Amount_Including_VAT; "Amount Including VAT") { }
        //     column(Description; Description) { }
        //     column(Type; Type) { }
        //     column(Unit_Cost; "Unit Cost") { }

        //     column(Line_Discount_Amount; "Line Discount Amount") { }

        //     column(Quantity; Quantity) { }

        // }

        // dataitem("Country"; "Country/Region")
        // {
        //     // DataItemLinkReference = "Sales Invoice Header";
        //     // DataItemLink = Code=FIELD("Bill-to Country/Region Code");
        //     MaxIteration = 1;
        //     column(Code; Code)
        //     {

        //     }
        //     column(County_Name; "County Name")
        //     {


        //     }

        //     column(EU_Country_Region_Code; "EU Country/Region Code") { }

        // }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(myInt; myInt)
                    {
                        ApplicationArea = All;

                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    // rendering
    // {
    //     layout(LayoutName)
    //     {
    //         Type = RDLC;
    //         LayoutFile = 'mylayout.rdl';
    //     }
    // }

    var
        myInt: Boolean;
}