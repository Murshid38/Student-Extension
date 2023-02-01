page 50143 Subjects
{
    ApplicationArea = All;
    Caption = 'Subjects';
    PageType = List;
    SourceTable = Subject;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Subject No."; Rec."Subject No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student No. field.';
                }
                field("Subject Name"; Rec."Subject Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Subject Name field.';
                }
            }
        }
    }
}
