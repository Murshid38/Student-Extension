xmlport 50100 "Import From CSV"
{
    Caption = 'Import From CSV';
    Format = VariableText;
    Direction = Import;
    UseRequestPage = false;

    schema
    {
        textelement(RootNodeName)
        {
            tableelement(Student; Student)
            {
                fieldelement(Id; Student.Id)
                {
                }
                fieldelement(Name; Student.Name)
                {
                }
                fieldelement(DateOfBirth; Student.DateOfBirth)
                {
                }
                trigger OnBeforeInsertRecord()
                begin
                    if Student.Get(Student.Id) then
                        currXMLport.Skip();
                end;
            }
        }
    }
}
