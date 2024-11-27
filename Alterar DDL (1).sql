-- Usar o schema mydb
USE mydb;

-- Adicionar uma nova coluna 'data_criacao' à tabela 'fornecedor'
ALTER TABLE fornecedor
ADD COLUMN data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Adicionar uma nova coluna 'data_criacao' à tabela 'cargo'
ALTER TABLE cargo
ADD COLUMN data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Adicionar uma nova coluna 'data_criacao' à tabela 'funcionario'
ALTER TABLE funcionario
ADD COLUMN data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Adicionar uma nova coluna 'data_criacao' à tabela 'cliente'
ALTER TABLE cliente
ADD COLUMN data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Adicionar uma nova coluna 'data_criacao' à tabela 'telefone'
ALTER TABLE telefone
ADD COLUMN data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Adicionar uma nova coluna 'data_criacao' à tabela 'endereco'
ALTER TABLE endereco
ADD COLUMN data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Adicionar uma nova coluna 'data_criacao' à tabela 'produto'
ALTER TABLE produto
ADD COLUMN data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Adicionar uma nova coluna 'data_criacao' à tabela 'venda'
ALTER TABLE venda
ADD COLUMN data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Adicionar uma nova coluna 'data_criacao' à tabela 'forma_pag'
ALTER TABLE forma_pag
ADD COLUMN data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Adicionar uma nova coluna 'data_criacao' à tabela 'pagamento'
ALTER TABLE pagamento
ADD COLUMN data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Adicionar uma nova coluna 'data_criacao' à tabela 'categoria_produto'
ALTER TABLE categoria_produto
ADD COLUMN data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Adicionar uma nova coluna 'data_criacao' à tabela 'produto_categoria'
ALTER TABLE produto_categoria
ADD COLUMN data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Adicionar uma nova coluna 'data_criacao' à tabela 'promocao'
ALTER TABLE promocao
ADD COLUMN data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Adicionar uma nova coluna 'data_criacao' à tabela 'desconto'
ALTER TABLE desconto
ADD COLUMN data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP;
