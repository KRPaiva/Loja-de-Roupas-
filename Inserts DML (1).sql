-- Dados para a tabela fornecedor
INSERT INTO fornecedor (nome) VALUES
('Fornecedor A'),
('Fornecedor B'),
('Fornecedor C'),
('Fornecedor D'),
('Fornecedor E'),
('Fornecedor F'),
('Fornecedor G'),
('Fornecedor H'),
('Fornecedor I'),
('Fornecedor J');

-- Dados para a tabela cargo
INSERT INTO cargo (nome) VALUES
('Gerente'),
('Vendedor'),
('Caixa'),
('Supervisor'),
('Assistente'),
('Analista'),
('Diretor'),
('Coordenador'),
('Operador'),
('Estagiário');

-- Dados para a tabela funcionario
INSERT INTO funcionario (nome, telefone, id_cargo) VALUES
('João Silva', '123456789', 1),
('Maria Oliveira', '987654321', 2),
('Carlos Souza', '456789123', 3),
('Ana Lima', '321654987', 4),
('Pedro Santos', '654987321', 5),
('Lucas Mendes', '789123456', 6),
('Mariana Costa', '147258369', 7),
('Fernanda Alves', '258369147', 8),
('Ricardo Pereira', '369147258', 9),
('Juliana Rocha', '741852963', 10);

-- Dados para a tabela cliente
INSERT INTO cliente (nome) VALUES
('Cliente 1'),
('Cliente 2'),
('Cliente 3'),
('Cliente 4'),
('Cliente 5'),
('Cliente 6'),
('Cliente 7'),
('Cliente 8'),
('Cliente 9'),
('Cliente 10');

-- Dados para a tabela telefone
INSERT INTO telefone (numero, id_fornecedor, id_funcionario, id_cliente) VALUES
('111111111', 1, NULL, NULL),
('222222222', 2, NULL, NULL),
('333333333', 3, NULL, NULL),
('444444444', 4, NULL, NULL),
('555555555', 5, NULL, NULL),
('666666666', 6, NULL, NULL),
('777777777', 7, NULL, NULL),
('888888888', 8, NULL, NULL),
('999999999', 9, NULL, NULL),
('000000000', 10, NULL, NULL);

-- Dados para a tabela endereco
INSERT INTO endereco (uf, cidade, bairro, cep, rua, numero, complemento, id_fornecedor, id_funcionario) VALUES
('SP', 'São Paulo', 'Centro', '01000-000', 'Rua A', '100', 'Apto 1', 1, NULL),
('RJ', 'Rio de Janeiro', 'Copacabana', '22000-000', 'Rua B', '200', 'Apto 2', 2, NULL),
('MG', 'Belo Horizonte', 'Savassi', '30100-000', 'Rua C', '300', 'Apto 3', 3, NULL),
('RS', 'Porto Alegre', 'Moinhos', '90100-000', 'Rua D', '400', 'Apto 4', 4, NULL),
('PR', 'Curitiba', 'Batel', '80200-000', 'Rua E', '500', 'Apto 5', 5, NULL),
('SC', 'Florianópolis', 'Centro', '88000-000', 'Rua F', '600', 'Apto 6', 6, NULL),
('BA', 'Salvador', 'Barra', '40100-000', 'Rua G', '700', 'Apto 7', 7, NULL),
('PE', 'Recife', 'Boa Viagem', '51000-000', 'Rua H', '800', 'Apto 8', 8, NULL),
('CE', 'Fortaleza', 'Meireles', '60100-000', 'Rua I', '900', 'Apto 9', 9, NULL),
('AM', 'Manaus', 'Centro', '69000-000', 'Rua J', '1000', 'Apto 10', 10, NULL);

-- Dados para a tabela produto
INSERT INTO produto (nome, preco, marca, cor, id_fornecedor) VALUES
('Produto 1', 10.00, 'Marca A', 'Vermelho', 1),
('Produto 2', 20.00, 'Marca B', 'Azul', 2),
('Produto 3', 30.00, 'Marca C', 'Verde', 3),
('Produto 4', 40.00, 'Marca D', 'Amarelo', 4),
('Produto 5', 50.00, 'Marca E', 'Preto', 5),
('Produto 6', 60.00, 'Marca F', 'Branco', 6),
('Produto 7', 70.00, 'Marca G', 'Rosa', 7),
('Produto 8', 80.00, 'Marca H', 'Laranja', 8),
('Produto 9', 90.00, 'Marca I', 'Roxo', 9),
('Produto 10', 100.00, 'Marca J', 'Cinza', 10);

-- Dados para a tabela venda
INSERT INTO venda (desconto, quantidade, id_funcionario, id_cliente) VALUES
(5.00, 2, 1, 1),
(10.00, 1, 2, 2),
(0.00, 3, 3, 3),
(15.00, 4, 4, 4),
(20.00, 5, 5, 5),
(25.00, 6, 6, 6),
(30.00, 7, 7, 7),
(35.00, 8, 8, 8),
(40.00, 9, 9, 9),
(45.00, 10, 10, 10);

-- Dados para a tabela forma_pag
INSERT INTO forma_pag (tipo) VALUES
('Dinheiro'),
('Cartão de Crédito'),
('Cartão de Débito'),
('Pix'),
('Boleto'),
('Transferência Bancária'),
('Cheque'),
('Vale Alimentação'),
('Vale Refeição'),
('Crédito Loja');

-- Dados para a tabela pagamento
INSERT INTO pagamento (data_venda, valor_pago, id_venda, id_forma_pag) VALUES
('2024-10-01', 20.00, 1, 1),
('2024-10-02', 18.00, 2, 2),
('2024-10-03', 90.00, 3, 3),
('2024-10-04', 120.00, 4, 4),
('2024-10-05', 150.00, 5, 5),
('2024-10-06', 180.00, 6, 6),
('2024-10-07', 210.00, 7, 7),
('2024-10-08', 240.00, 8, 8),
('2024-10-09', 270.00, 9, 9),
('2024-10-10', 300.00, 10, 10);

-- Dados para a tabela categoria_produto
INSERT INTO categoria_produto (nome) VALUES
('Categoria 1'),
('Categoria 2'),
('Categoria 3'),
('Categoria 4'),
('Categoria 5'),
('Categoria 6'),
('Categoria 7'),
('Categoria 8'),
('Categoria 9'),
('Categoria 10');

-- Dados para a tabela produto_categoria
INSERT INTO produto_categoria (id_produto, id_categoria) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Dados para a tabela promocao
INSERT INTO promocao (data_inicio, data_fim) VALUES
('2024-11-01', '2024-11-30'),
('2024-12-01', '2024-12-31'),
('2024-01-01', '2024-01-31'),
('2024-02-01', '2024-02-28'),
('2024-03-01', '2024-03-31'),
('2024-04-01', '2024-04-30'),
('2024-05-01', '2024-05-31'),
('2024-06-01', '2024-06-30'),
('2024-07-01', '2024-07-31'),
('2024-08-01', '2024-08-31');

-- Dados para a tabela desconto
INSERT INTO desconto (id_promocao, id_produto, desconto) VALUES
(1, 1, 10.00),
(2, 2, 15.00),
(3, 3, 20.00),
(4, 4, 25.00),
(5, 5, 30.00),
(6, 6, 35.00),
(7, 7, 40.00),
(8, 8, 45.00),
(9, 9, 50.00),
(10, 10, 55.00);
