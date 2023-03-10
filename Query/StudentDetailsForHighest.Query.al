query 50147 "Student Details For Highest"
{
    Caption = 'Student Details For Highest';
    QueryType = Normal;

    elements
    {
        dataitem(Subject_Highest;
        "Subject Highest")
        {
            column(SubjectNo; "Subject No.")
            {
            }
            column(Marks; Marks)
            {
            }

            dataitem(Student; Student)
            {
                DataItemLink = Id = Subject_Highest.StudentId;
                SqlJoinType = InnerJoin;

                column(Id; Id)
                {
                    // ColumnFilter = Id = filter(< 3);
                }

                column(Name; Name)
                {

                }

                // filter(DateOfBirth; DateOfBirth)
                // {
                // ColumnFilter = DateOfBirth = filter(= '8/8/1996');
                // }
            }
        }
    }

    trigger OnBeforeOpen()
    begin
        // CurrQuery.SetRange(CurrQuery.Id, 3);
    end;
}
