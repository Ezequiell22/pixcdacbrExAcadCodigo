object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 733
  ClientWidth = 1095
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 48
    Top = 19
    Width = 70
    Height = 15
    Caption = 'Consultar pix'
  end
  object Button1: TButton
    Left = 184
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object edt_consulta_pix: TEdit
    Left = 48
    Top = 40
    Width = 121
    Height = 23
    TabOrder = 1
    Text = 'edt_consulta_pix'
  end
  object ACBrPixCD1: TACBrPixCD
    Recebedor.CodCategoriaComerciante = 0
    Left = 480
    Top = 304
  end
end
