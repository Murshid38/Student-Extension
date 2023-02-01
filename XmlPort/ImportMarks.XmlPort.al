xmlport 50149 "Import Marks"
{
    Caption = 'Import Marks';
    Format = VariableText;
    Direction = Import;
    UseRequestPage = false;

    schema
    {
        textelement(RootNodeName)
        {
            tableelement(SubjectMarks; "Subject Marks")
            {
                fieldelement(StudentID; SubjectMarks.StudentID)
                {
                }
                fieldelement(SubjectNo; SubjectMarks."Subject No.")
                {
                }
                fieldelement(Marks; SubjectMarks.Marks)
                {
                }

                trigger OnBeforeInsertRecord()
                begin
                    if SubjectMarks.Get(SubjectMarks.StudentID, SubjectMarks."Subject No.") then
                        currXMLport.Skip();
                end;
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
