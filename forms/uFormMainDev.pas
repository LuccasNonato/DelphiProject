unit uFormMainDev;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFomMain, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxBarBuiltInMenu, dxSkinsCore,
  dxSkinsDefaultPainters, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvToolBar, AdvToolBarStylers, dxNavBarOfficeNavigationBar, AdvShapeButton,
  AdvGlowButton, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TFormMainDev = class(TFormMain)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMainDev: TFormMainDev;

implementation

{$R *.dfm}

end.
