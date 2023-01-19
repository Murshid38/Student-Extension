query 50101 "Subject Marks"
{
    Caption = 'Subject Marks';
    QueryType = Normal;
    OrderBy = descending(Subject1_Marks);

    elements
    {
        dataitem(Student; Student)
        {
            column(Id; Id)
            {
            }
            column(Name; Name)
            {
            }

            dataitem(Subject_Marks; "Subject Marks")
            {
                DataItemLink = StudentID = Student.Id;
                SqlJoinType = InnerJoin;

                column(Subject1_Marks; "Subject1 Marks")
                {
                }
                column(Subject2_Marks; "Subject2 Marks")
                {
                }
                column(Subject3_Marks; "Subject3 Marks")
                {
                }
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
