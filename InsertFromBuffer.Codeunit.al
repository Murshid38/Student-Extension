codeunit 50101 "Insert From Buffer"
{
    trigger OnRun()
    var
    // ExcelBufferRecord: Record "Excel Buffer";
    // StudentRecord: Record Student;
    // ColumnNo: Integer;
    begin
        // for ColumnNo := 1 to 3 do begin
        // ExcelBufferRecord.Get(2, 1);
        // StudentRecord.Init();
        // Evaluate(StudentRecord.Id, ExcelBufferRecord."Cell Value as Text");
        // Evaluate(StudentRecord.Name, ExcelBufferRecord."Cell Value as Text");
        // StudentRecord.Insert();
        // end;
    end;

    procedure GetRowColumnNo(TotalRowNo: Integer; TotalColumnNo: Integer)
    begin
        Message('Total Row No is: %1, Total Column No is: %2', TotalRowNo, TotalColumnNo);
    end;
}
