object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 899
  ClientWidth = 1467
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PageControl1: TPageControl
    Left = -8
    Top = 216
    Width = 1473
    Height = 675
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object Label1: TLabel
        Left = 48
        Top = 19
        Width = 70
        Height = 15
        Caption = 'Consultar pix'
      end
      object edt_consulta_pix: TEdit
        Left = 48
        Top = 40
        Width = 121
        Height = 23
        TabOrder = 0
        Text = 'edt_consulta_pix'
      end
      object Button1: TButton
        Left = 184
        Top = 39
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Memo1: TMemo
        Left = 40
        Top = 104
        Width = 1281
        Height = 465
        Lines.Strings = (
          'Memo1')
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
    end
  end
end
