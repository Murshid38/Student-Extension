table 50147 "Subject Highest"
{
    Caption = 'Subject Highest';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; SubjectId; Code[20])
        {
            Caption = 'SubjectId';
            DataClassification = CustomerContent;
        }
        field(2; StudentId; Integer)
        {
            Caption = 'StudentId';
            DataClassification = CustomerContent;
        }
        field(3; Marks; Integer)
        {
            Caption = 'Marks';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; SubjectId)
        {
            Clustered = true;
        }
    }
}
