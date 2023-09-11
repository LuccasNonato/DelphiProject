object Lookup: TLookup
  OldCreateOrder = False
  Height = 499
  Width = 734
  object fdQryEstados: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT * FROM ESTADO')
    Left = 16
    Top = 328
  end
  object dsEstados: TDataSource
    DataSet = fdQryEstados
    Left = 16
    Top = 376
  end
  object fdTransaction: TFDTransaction
    Connection = dmDados.fdCon
    Left = 16
    Top = 16
  end
  object fdQryCidades: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT * FROM CIDADE')
    Left = 16
    Top = 224
  end
  object dsCidades: TDataSource
    DataSet = fdQryCidades
    Left = 16
    Top = 272
  end
  object fdQryFornecedor: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR')
    Left = 16
    Top = 128
  end
  object dsFornecedor: TDataSource
    DataSet = fdQryFornecedor
    Left = 16
    Top = 176
  end
  object fdQryClientes: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT ID_CLIENTE, '
      '       DECODE(TIPO_FJ, '#39'F'#39', NOME, RAZAO_SOCIAL) NomeCliente'
      '  FROM CLIENTE')
    Left = 112
    Top = 128
  end
  object dsClientes: TDataSource
    DataSet = fdQryClientes
    Left = 112
    Top = 176
  end
  object fdQryProdutos: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT ID_PRODUTO,'
      '       DESCRICAO,'
      '       V_UNITARIO'
      'FROM PRODUTO')
    Left = 176
    Top = 128
    object fdQryProdutosID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryProdutosDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
    object fdQryProdutosV_UNITARIO: TSingleField
      FieldName = 'V_UNITARIO'
      Origin = 'V_UNITARIO'
    end
  end
  object dsProdutos: TDataSource
    DataSet = fdQryProdutos
    Left = 176
    Top = 176
  end
end
