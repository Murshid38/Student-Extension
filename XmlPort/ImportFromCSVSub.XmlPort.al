xmlport 50146 "Import From CSV Sub"
{
    Caption = 'Import From CSV Sub';
    Direction = Import;
    Format = VariableText;
    UseRequestPage = false;

    schema
    {
        textelement(RootNodeName)
        {
            tableelement(SubjectHighest; "Subject Highest")
            {
                fieldelement(SubjectId; SubjectHighest.SubjectId)
                {
                }
                fieldelement(StudentId; SubjectHighest.StudentId)
                {
                }
                fieldelement(Marks; SubjectHighest.Marks)
                {
                }
            }
        }
    }
}
