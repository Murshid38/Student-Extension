page 50146 Students
{
    ApplicationArea = All;
    Caption = 'Students';
    PageType = List;
    SourceTable = Student;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Id; Rec.Id)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Id field.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(DateOfBirth; Rec.DateOfBirth)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(EMail; Rec.EMail)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the E-Mail field.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Insert)
            {
                ApplicationArea = All;
                Caption = 'Insert From CSV';
                ToolTip = 'Insert From CSV';
                Image = Insert;
                Promoted = true;
                PromotedOnly = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    ImportFromCSVXmlPort: XmlPort "Import From CSV";
                begin
                    ImportFromCSVXmlPort.Run();
                end;
            }
        }
    }
}