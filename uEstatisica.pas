unit uEstatisica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, strutils, StdCtrls, DB, Grids, DBGrids, ExtCtrls;

type
  TF_Estatisica = class(TForm)
    DBGrid1: TDBGrid;
    DS_Estatistica: TDataSource;
    Label42: TLabel;
    ED_Ultimo_Sorteio: TEdit;
    Button1: TButton;
    btRefresh: TButton;
    Panel1: TPanel;
    rbQuantidade: TRadioButton;
    rbNumerica: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure rbQuantidadeClick(Sender: TObject);
    procedure rbNumericaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Estatisica: TF_Estatisica;

implementation

uses uDataModule01, uE_Sorteio;

{$R *.dfm}

procedure TF_Estatisica.FormCreate(Sender: TObject);
begin
    DM1.IBQ_Estatisica.Close;
    DM1.IBQ_Estatisica.SQL.Clear;
    DM1.IBQ_Estatisica.SQL.Add('SELECT ULTIMO_SORTEIO FROM ESTATISTICA_25N ORDER BY ULTIMO_SORTEIO');
    DM1.IBQ_Estatisica.Prepare;
    DM1.IBQ_Estatisica.Open;
    DM1.IBQ_Estatisica.Last;
    ED_Ultimo_Sorteio.Text := DM1.IBQ_Estatisica.FieldByName('ULTIMO_SORTEIO').AsString;
    DM1.IBQ_Estatisica.Close;
    rbQuantidade.Checked := True;
end;


procedure TF_Estatisica.Button1Click(Sender: TObject);
begin
  Application.CreateForm(TF_E_Sorteio, F_E_Sorteio);
  F_E_Sorteio.ShowModal();
  F_E_Sorteio.Free;
end;


procedure TF_Estatisica.btRefreshClick(Sender: TObject);
begin
    DM1.IBQ_Estatisica.Close;
    DM1.IBQ_Estatisica.SQL.Clear;
    DM1.IBQ_Estatisica.SQL.Add('SELECT ULTIMO_SORTEIO FROM ESTATISTICA_25N ORDER BY ULTIMO_SORTEIO');
    DM1.IBQ_Estatisica.Prepare;
    DM1.IBQ_Estatisica.Open;
    DM1.IBQ_Estatisica.Last;
    ED_Ultimo_Sorteio.Text := DM1.IBQ_Estatisica.FieldByName('ULTIMO_SORTEIO').AsString;
    DM1.IBQ_Estatisica.Close;
    DM1.IBQ_Estatisica.SQL.Clear;
    DM1.IBQ_Estatisica.SQL.Add('SELECT numero, qtd  FROM ESTATISTICA_25N ORDER BY (qtd) DESC, numero');
    DM1.IBQ_Estatisica.Prepare;
    DM1.IBQ_Estatisica.Open;
end;

procedure TF_Estatisica.rbQuantidadeClick(Sender: TObject);
begin
    DM1.IBQ_Estatisica.SQL.Clear;
    DM1.IBQ_Estatisica.SQL.Add('SELECT numero, qtd  FROM ESTATISTICA_25N ORDER BY (qtd) DESC, numero');
    DM1.IBQ_Estatisica.Prepare;
    DM1.IBQ_Estatisica.Open;
end;

procedure TF_Estatisica.rbNumericaClick(Sender: TObject);
begin
    DM1.IBQ_Estatisica.SQL.Clear;
    DM1.IBQ_Estatisica.SQL.Add('SELECT numero, qtd  FROM ESTATISTICA_25N ORDER BY numero');
    DM1.IBQ_Estatisica.Prepare;
    DM1.IBQ_Estatisica.Open;
end;

end.
