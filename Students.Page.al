page 50100 Students
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
            }
        }
    }

    actions
    {
        area(Processing)
        {
            // action(Insert)
            // {
            //     ApplicationArea = All;
            //     Caption = 'Insert From Excel';
            //     ToolTip = 'Insert From Excel';
            //     Image = Insert;
            //     Promoted = true;
            //     PromotedOnly = true;
            //     PromotedCategory = Process;

            //     trigger OnAction()
            //     var
            //     // ImportToListCodeunit: Codeunit "Import To List";
            //     begin
            //         // ImportToListCodeunit.Run();
            //     end;
            // }

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
                // ImportFromCSVXmlPort: XmlPort "Import From CSV";
                begin
                    //  ImportFromCSVXmlPort.Run();   
                    Xmlport.Run(50100);
                end;
            }
        }
    }
}