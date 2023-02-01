page 50145 "Subject Highests"
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
                field(SubjectId; Rec."Subject No.")
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
}
