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
        field(10; "Subject No."; Integer)
        {
            Caption = 'Subject No.';
            DataClassification = CustomerContent;
        }
        field(20; "Marks"; Integer)
        {
            Caption = 'Subject Marks';
            DataClassification = CustomerContent;
        }

    }
    keys
    {
        key(PK; StudentID, "Subject No.")
        {
            Clustered = true;
        }
    }
}
