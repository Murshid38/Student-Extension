codeunit 50100 "Import To Buffer"
{
    trigger OnRun()
    var
        ExcelBufferRecord: Record "Excel Buffer";
        InsertFromBufferCodeunit: Codeunit "Insert From Buffer";
        NVInstream: InStream;
        Name: Text;
        TotalRowNo: Integer;
        TotalColumnNo: Integer;
    begin
        UploadIntoStream('Select the file to upload', '', '', Name, NVInstream);
        ExcelBufferRecord.OpenBookStream(NVInstream, 'Sheet2');
        ExcelBufferRecord.ReadSheet();
        TotalRowNo := ExcelBufferRecord."Row No.";
        TotalColumnNo := ExcelBufferRecord."Column No.";
        InsertFromBufferCodeunit.GetRowColumnNo(TotalRowNo, TotalColumnNo);
    end;
}
