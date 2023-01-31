table 50146 "Subject Marks"
{
    Caption = 'Subject Marks';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; StudentID; Integer)
        {
            Caption = 'StudentID';
            DataClassification = CustomerContent;
        }
        field(2; "Subject1 Marks"; Integer)
        {
            Caption = 'Subject1 Marks';
            DataClassification = CustomerContent;
        }
        field(3; "Subject2 Marks"; Integer)
        {
            Caption = 'Subject2 Marks';
            DataClassification = CustomerContent;
        }
        field(4; "Subject3 Marks"; Integer)
        {
            Caption = 'Subject3 Marks';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; StudentID)
        {
            Clustered = true;
        }
    }
}
