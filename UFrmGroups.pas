unit UFrmGroups;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, sEdit, Vcl.Menus,
  Vcl.ComCtrls, sListView, sSkinProvider;

type
  TFrmGroups = class(TForm)
    sSkinProvider: TsSkinProvider;
    LVGrp: TsListView;
    PMenu: TPopupMenu;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGroups: TFrmGroups;

implementation

USES UFrmMain;

{$R *.dfm}

end.
