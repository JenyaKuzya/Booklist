program Project1;

uses
  Vcl.Forms,
  Records in 'Records.pas' {FRecord},
  Add in 'Add.pas' {FAdd},
  Lib in 'Lib.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Silver');
  Application.CreateForm(TFRecord, FRecord);
  Application.CreateForm(TFAdd, FAdd);
  Application.Run;
end.
