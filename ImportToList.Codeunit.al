codeunit 50101 "Import To List"
{
    trigger OnRun()
    var
        StudentRecord: Record Student;
        RowNo: Integer;
        NVInstream: InStream;
        Name: Text;
        TotalRowNo: Integer;
    begin
        UploadIntoStream('Select the file to upload', '', '', Name, NVInstream);
        ExcelBufferRecord.OpenBookStream(NVInstream, 'Sheet2');
        ExcelBufferRecord.ReadSheet();
        TotalRowNo := ExcelBufferRecord."Row No.";

        for RowNo := 2 to TotalRowNo do begin
            ExcelBufferRecord.Get(RowNo, 1);
            StudentRecord.Init();
            Evaluate(StudentRecord.Id, GetValueAtCell(RowNo, 1));
            Evaluate(StudentRecord.Name, GetValueAtCell(RowNo, 2));
            Evaluate(StudentRecord.DateOfBirth, GetValueAtCell(RowNo, 3));
            StudentRecord.Insert();
        end;
    end;

    local procedure GetValueAtCell(RowNo: Integer; ColumnNo: Integer): Text
    begin
        ExcelBufferRecord.Get(RowNo, ColumnNo);
        exit(ExcelBufferRecord."Cell Value as Text");
    end;

    var
        ExcelBufferRecord: Record "Excel Buffer";
}
