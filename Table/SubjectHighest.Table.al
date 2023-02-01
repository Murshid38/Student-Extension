table 50147 "Subject Highest"
{
    Caption = 'Subject Highest';
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "Subject No."; Integer)
        {
            Caption = 'Subject No.';
            DataClassification = CustomerContent;
        }
        field(2; StudentId; Integer)
        {
            Caption = 'StudentId';
            FieldClass = FlowField;
            CalcFormula = lookup("Subject Marks".StudentID where(Marks = field(Marks)));
            Editable = false;
        }
        field(3; Marks; Integer)
        {
            Caption = 'Marks';
            FieldClass = FlowField;
            CalcFormula = max("Subject Marks".Marks where("Subject No." = field("Subject No.")));
            Editable = false;
        }
    }
    keys
    {
        key(PK; "Subject No.")
        {
            Clustered = true;
        }
    }
}
