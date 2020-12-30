unit UFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, sSkinManager, Vcl.ComCtrls, sListView,
  Vcl.ToolWin, sToolBar, sStatusBar, acCoolBar, Vcl.Menus, Vcl.StdCtrls,
  sButton, Vcl.ExtCtrls, sPanel, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, acDBGrid, FireDAC.Phys.FB, FireDAC.Phys.FBDef;

type
  TFrmMain = class(TForm)
    sSkinManager: TsSkinManager;
    LV: TsListView;
    sStatusBar1: TsStatusBar;
    PnlBar: TsPanel;
    BtnAddLink: TsButton;
    PMenuLV: TPopupMenu;
    BtnGroups: TsButton;
    sDBGrid1: TsDBGrid;
    FDConnection: TFDConnection;
    FDQTable: TFDQuery;
    DSTable: TDataSource;
    FDQuery: TFDQuery;
    procedure BtnAddLinkClick(Sender: TObject);
    function AddLVItem: Integer;
    procedure BtnGroupsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

const
  lv_goods     = 0;
  lv_epn_lnk   = 1;
  lv_groups    = 2;
  lv_goods_lnk = 3;
  MB_CAPTION   = 'EPN Linker';

implementation

Uses UFrmAddLink, UFrmGroups;

{$R *.dfm}

function TFrmMain.AddLVItem: Integer;
begin
  With LV.Items.Add do
  begin
    Caption := IntToStr(index + 1);
    SubItems.Add('');
    SubItems.Add('');
    SubItems.Add('');
    SubItems.Add('');
    Result := Index;
  end;
end;

procedure TFrmMain.BtnAddLinkClick(Sender: TObject);
var x: integer;
begin
  FrmAddLink.AddLink;
  if not FrmAddLink.Apply then Exit;
  x := AddLVItem;
  LV.Items[x].SubItems[lv_goods]     := FrmAddLink.mmGoods.Text;
  LV.Items[x].SubItems[lv_goods_lnk] := FrmAddLink.mmGoodsLink.Text;
  LV.Items[x].SubItems[lv_epn_lnk]   := FrmAddLink.edEPNLink.Text;
  LV.Items[x].SubItems[lv_groups]    := FrmAddLink.CmBoxExCategory.Text;

  if FrmAddLink.CmBoxExCategory.Items.IndexOf(FrmAddLink.CmBoxExCategory.Text) = -1 then
  begin
    FrmAddLink.CmBoxExCategory.Items.Add(FrmAddLink.CmBoxExCategory.Text);
  end;

  FDQTable.Refresh;

end;

procedure TFrmMain.BtnGroupsClick(Sender: TObject);
begin
  FrmGroups.ShowModal;
end;

end.
