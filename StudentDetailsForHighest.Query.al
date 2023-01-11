query 50100 "Student Details For Highest"
{
    Caption = 'Student Details For Highest';
    QueryType = Normal;

    elements
    {
        dataitem(Subject_Highest; "Subject Highest")
        {
            column(SubjectId; SubjectId)
            {
            }
            column(Marks; Marks)
            {
            }

            dataitem(Student; Student)
            {
                DataItemLink = Id = Subject_Highest.StudentId;

                // SqlJoinType = InnerJoin;

                column(Id; Id)
                {
                }
                column(Name; Name)
                {
                }
            }
        }
    }
}
