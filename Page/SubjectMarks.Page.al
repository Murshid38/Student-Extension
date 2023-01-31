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
                field("Subject1 Marks"; Rec."Subject1 Marks")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Subject1 Marks field.';
                }
                field("Subject2 Marks"; Rec."Subject2 Marks")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Subject2 Marks field.';
                }
                field("Subject3 Marks"; Rec."Subject3 Marks")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Subject3 Marks field.';
                }
            }
        }
    }
}
