program EPNLinker;

uses
  Vcl.Forms,
  UFrmMain in 'UFrmMain.pas' {FrmMain},
  UFrmAddLink in 'UFrmAddLink.pas' {FrmAddLink},
  UFrmGroups in 'UFrmGroups.pas' {FrmGroups};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TFrmAddLink, FrmAddLink);
  Application.CreateForm(TFrmGroups, FrmGroups);
  Application.Run;
end.
