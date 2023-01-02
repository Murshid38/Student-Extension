codeunit 50100 "Import To Buffer"
{
    trigger OnRun()
    var
        ExcelBufferRecord: Record "Excel Buffer";
        NVInstream: InStream;
        Name: Text;
    begin
        UploadIntoStream('Select the file to upload', '', '', Name, NVInstream);
        ExcelBufferRecord.OpenBookStream(NVInstream, 'Sheet2');
        ExcelBufferRecord.ReadSheet();
    end;
}
