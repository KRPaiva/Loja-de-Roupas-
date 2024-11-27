-- Destruir tabelas na ordem correta para evitar problemas de chave estrangeira
DROP TABLE IF EXISTS desconto;
DROP TABLE IF EXISTS produto_categoria;
DROP TABLE IF EXISTS promocao;
DROP TABLE IF EXISTS categoria_produto;
DROP TABLE IF EXISTS pagamento;
DROP TABLE IF EXISTS forma_pag;
DROP TABLE IF EXISTS venda;
DROP TABLE IF EXISTS produto;
DROP TABLE IF EXISTS endereco;
DROP TABLE IF EXISTS telefone;
DROP TABLE IF EXISTS cliente;
DROP TABLE IF EXISTS funcionario;
DROP TABLE IF EXISTS cargo;
DROP TABLE IF EXISTS fornecedor;

-- Destruir o schema
DROP SCHEMA IF EXISTS mydb;
