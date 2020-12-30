unit UFrmAddLink;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sMemo, sButton, sLabel,
  Vcl.ComCtrls, sComboBoxes, sEdit, sSkinProvider, Error, FireDAC.Stan.Error;

Type TFrmInitMode = (modeAdd, modeEdit);

type
  TFrmAddLink = class(TForm)
    sSkinProvider: TsSkinProvider;
    edEPNLink: TsEdit;
    CmBoxExCategory: TsComboBoxEx;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    BtnCloce: TsButton;
    BtnApply: TsButton;
    mmGoods: TsMemo;
    mmGoodsLink: TsMemo;
    procedure BtnApplyClick(Sender: TObject);
    procedure AddLink;
    procedure EditLink(x: integer);
    function GroupToIndex(GroupName: String): SmallInt;
    procedure BtnCloceClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var Apply: Boolean;
  end;

var
  FrmAddLink: TFrmAddLink;

implementation

Uses UFrmMain, UFrmGroups;

{$R *.dfm}

{ TFrmAddLink }

procedure TFrmAddLink.AddLink;
begin
  Apply                     := False;
  edEPNLink.Text            := '';
  CmBoxExCategory.Text      := '';
  CmBoxExCategory.ItemIndex := -1;
  mmGoodsLink.Clear;
  mmGoods.Clear;
  ShowModal;
end;

procedure TFrmAddLink.BtnApplyClick(Sender: TObject);
var 
   E: TFDDBError;
begin
  if mmGoods.Text = '' then
  begin
    MessageBox(Handle, PChar('Не введены данные в поле "Описание товара"'), Pchar(MB_CAPTION), MB_ICONWARNING);
    Exit;
  end;

  if (mmGoodsLink.Text = '') then
  begin
    MessageBox(Handle, PChar('Не введены данные в поле "ССылка на товар"'), Pchar(MB_CAPTION), MB_ICONWARNING);
    Exit;
  end;

  try
    With FrmMain.FDQuery do
    begin
      SQL.Text := 'INSERT INTO LINKS_TABLE(GOODES,EPNLINKS,GOODS_LINKS) '
                    + 'VALUES(:pGoods, :pEpnLinks, :pGoodsLinks)';
      ParamByName('pGoods').Value      := mmGoods.Text;
      ParamByName('pEpnLinks').Value   := edEPNLink.Text;
      ParamByName('pGoodsLinks').Value := mmGoodsLink.Text;
      ExecSQL;
    end;
  except    
      MessageBox(Handle, PChar('Возникла ошбка...'), PChar(MB_CAPTION), MB_ICONWARNING);
      Exit;
  end;

  MessageBox(Handle, PChar('OK. данные добавлены в базу'), PChar(MB_CAPTION), MB_ICONINFORMATION);

  Apply := true;
  Close;
end;

procedure TFrmAddLink.BtnCloceClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmAddLink.EditLink(x: integer);
begin
  Apply := false;
  mmGoods.Text     := FrmMain.LV.Items[x].SubItems[lv_goods];
  mmGoodsLink.Text := FrmMain.LV.Items[x].SubItems[lv_goods_lnk];
  edEPNLink.Text   := FrmMain.LV.Items[x].SubItems[lv_epn_lnk];
  CmBoxExCategory.ItemIndex := GroupToIndex(FrmMain.LV.Items[x].SubItems[lv_groups]);
end;

function TFrmAddLink.GroupToIndex(GroupName: String): SmallInt;
begin
  Result := 0;
end;

end.
