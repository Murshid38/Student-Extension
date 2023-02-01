page 50144 "Subject Marks"
{
    ApplicationArea = All;
    Caption = 'Subject Marks';
    PageType = List;
    SourceTable = "Subject Marks";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(StudentID; Rec.StudentID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the StudentID field.';
                }
                field("Subject No."; Rec."Subject No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Subject No. field.';
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
                Caption = 'Import Marks';
                ToolTip = 'Import Marks';
                Image = Insert;
                Promoted = true;
                PromotedOnly = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    ImportMarks: XmlPort "Import Marks";
                begin
                    ImportMarks.Run();
                end;
            }
        }
    }
}
