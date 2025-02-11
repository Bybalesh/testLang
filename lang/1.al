page 50100 "Customer List"
{
    ApplicationArea = All;
    Caption = 'Customer List';
    UsageCategory = Lists;
    SourceTable = Customer;  // Ссылка на таблицу Customer

    layout
    {
        area(content)
        {
            repeater(Control1102152000)
            {
                field(No; Rec.No)  // Поле No. из таблицы Customer
                {
                    ApplicationArea = All;
                    Caption = 'No.';
                }
                field(Name; Rec.Name)  // Поле Name из таблицы Customer
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }
                field(City; Rec.City)  // Поле City из таблицы Customer
                {
                    ApplicationArea = All;
                    Caption = 'City';
                }
            }
        }
    }
}
