page 50101 "Subject Highests"
{
    ApplicationArea = All;
    Caption = 'Subject Highests';
    PageType = List;
    SourceTable = "Subject Highest";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(SubjectId; Rec.SubjectId)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SubjectId field.';
                }
                field(StudentId; Rec.StudentId)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the StudentId field.';
                }
                field(Marks; Rec.Marks)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Marks field.';
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
                Caption = 'Insert From CSV Sub';
                ToolTip = 'Insert From CSV Sub';
                Image = Insert;
                Promoted = true;
                PromotedOnly = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    ImportFromCSVSubXmlPort: XmlPort "Import From CSV Sub";
                begin
                    ImportFromCSVSubXmlPort.Run();
                end;
            }
        }
    }
}
