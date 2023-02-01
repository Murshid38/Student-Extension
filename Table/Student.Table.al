table 50148 Student
{
    Caption = 'Student';
    DataClassification = CustomerContent;

    fields
    {
        field(1; Id; Integer)
        {
            Caption = 'Id';
            DataClassification = CustomerContent;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(3; DateOfBirth; Date)
        {
            Caption = 'Date of Birth';
            DataClassification = CustomerContent;
        }
        field(4; EMail; Text[255])
        {
            Caption = 'E-Mail Address';
            ExtendedDatatype = EMail;
            DataClassification = CustomerContent;
        }
        field(5; "Total Marks"; Integer)
        {
            Caption = 'Total Marks';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = sum("Subject Marks"."Marks" where(StudentID = field(Id)));
        }
    }

    keys
    {
        key(PK; Id)
        {
            Clustered = true;
        }
    }
}
