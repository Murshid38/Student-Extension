table 50145 Subject
{
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "Subject No."; Integer)
        {
            Caption = 'Subject No.';
            DataClassification = CustomerContent;
        }
        field(20; "Subject Name"; Text[50])
        {
            Caption = 'Subject Name';
            DataClassification = CustomerContent;
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