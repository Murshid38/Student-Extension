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
            action(Import)
            {
                ApplicationArea = All;
                ToolTip = 'Import Excel Data';
                Image = Import;
                Promoted = true;
                PromotedOnly = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    ImportToBufferCodeunit: Codeunit "Import To Buffer";
                begin
                    ImportToBufferCodeunit.Run();
                end;
            }

        }
    }
}