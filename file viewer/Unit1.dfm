object Form1: TForm1
  Left = 261
  Top = 161
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 35
    Top = 16
    Width = 150
    Height = 13
    Caption = 'C:\...\Desktop\'#1082#1083#1086#1085#1099'\Project1'
  end
  object Label2: TLabel
    Left = 352
    Top = 56
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 352
    Top = 112
    Width = 32
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 8
    Top = 280
    Width = 82
    Height = 32
    Caption = 'Label4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object FileListBox1: TFileListBox
    Left = 176
    Top = 56
    Width = 145
    Height = 169
    FileEdit = Edit3
    ItemHeight = 13
    TabOrder = 0
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 8
    Top = 56
    Width = 169
    Height = 169
    DirLabel = Label1
    FileList = FileListBox1
    ItemHeight = 16
    TabOrder = 1
  end
  object FilterComboBox1: TFilterComboBox
    Left = 176
    Top = 40
    Width = 145
    Height = 21
    FileList = FileListBox1
    TabOrder = 2
  end
  object DriveComboBox1: TDriveComboBox
    Left = 8
    Top = 40
    Width = 169
    Height = 19
    DirList = DirectoryListBox1
    TabOrder = 3
  end
  object Button1: TButton
    Left = 352
    Top = 72
    Width = 113
    Height = 41
    Caption = 'Create folder'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 352
    Top = 136
    Width = 121
    Height = 41
    Caption = 'Create file'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 464
    Top = 72
    Width = 153
    Height = 21
    TabOrder = 6
    Text = #1053#1086#1074#1072#1103' '#1087#1072#1087#1082#1072
  end
  object Edit2: TEdit
    Left = 472
    Top = 136
    Width = 169
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Text = #1060#1072#1081#1083
  end
  object Button3: TButton
    Left = 8
    Top = 248
    Width = 97
    Height = 25
    Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 104
    Top = 248
    Width = 97
    Height = 25
    Caption = #1042#1089#1090#1072#1074#1080#1090#1100
    TabOrder = 9
    OnClick = Button4Click
  end
  object Edit4: TEdit
    Left = 640
    Top = 136
    Width = 81
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    Text = '.txt'
  end
  object Edit3: TEdit
    Left = 8
    Top = 224
    Width = 313
    Height = 21
    TabOrder = 11
    Text = '*.*'
  end
  object Button5: TButton
    Left = 616
    Top = 72
    Width = 137
    Height = 41
    Caption = 'Delete folder'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = Button5Click
  end
end
