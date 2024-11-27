-- View para listar todos os fornecedores e seus produtos
CREATE VIEW vw_fornecedores_produtos AS
SELECT fornecedor.nome AS fornecedor, produto.nome AS produto
FROM fornecedor
JOIN produto ON fornecedor.id_fornecedor = produto.id_fornecedor;

-- View para listar todos os funcionários e seus cargos
CREATE VIEW vw_funcionarios_cargos AS
SELECT funcionario.nome AS funcionario, cargo.titulo AS cargo
FROM funcionario
JOIN cargo ON funcionario.id_cargo = cargo.id_cargo;

-- View para listar todos os clientes e suas compras
CREATE VIEW vw_clientes_compras AS
SELECT cliente.nome AS cliente, venda.id_venda AS venda
FROM cliente
JOIN venda ON cliente.id_cliente = venda.id_cliente;

-- View para listar todos os produtos e suas categorias
CREATE VIEW vw_produtos_categorias AS
SELECT produto.nome AS produto, categoria_produto.nome AS categoria
FROM produto
JOIN produto_categoria ON produto.id_produto = produto_categoria.id_produto
JOIN categoria_produto ON produto_categoria.id_categoria = categoria_produto.id_categoria;

-- View para listar todas as vendas e os funcionários responsáveis
CREATE VIEW vw_vendas_funcionarios AS
SELECT venda.id_venda AS venda, funcionario.nome AS funcionario
FROM venda
JOIN funcionario ON venda.id_funcionario = funcionario.id_funcionario;

-- View para listar todas as vendas e os clientes que compraram
CREATE VIEW vw_vendas_clientes AS
SELECT venda.id_venda AS venda, cliente.nome AS cliente
FROM venda
JOIN cliente ON venda.id_cliente = cliente.id_cliente;

-- View para listar todos os produtos em promoção
CREATE VIEW vw_produtos_promocao AS
SELECT produto.nome AS produto, desconto.desconto AS desconto
FROM produto
JOIN desconto ON produto.id_produto = desconto.id_produto;

-- View para listar todas as promoções ativas
CREATE VIEW vw_promocoes_ativas AS
SELECT promocao.id_promocao AS promocao, promocao.data_inicio, promocao.data_fim
FROM promocao
WHERE CURDATE() BETWEEN promocao.data_inicio AND promocao.data_fim;

-- View para listar todos os pagamentos realizados em uma data específica
CREATE VIEW vw_pagamentos_data AS
SELECT pagamento.id_pagamento AS pagamento, pagamento.data_venda, pagamento.valor_pago
FROM pagamento
WHERE pagamento.data_venda = CURDATE();

-- View para listar todos os produtos que nunca foram vendidos
CREATE VIEW vw_produtos_nunca_vendidos AS
SELECT produto.nome AS produto
FROM produto
LEFT JOIN venda ON produto.id_produto = venda.id_venda
WHERE venda.id_venda IS NULL;
