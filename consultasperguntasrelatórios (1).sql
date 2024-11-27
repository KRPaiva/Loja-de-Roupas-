-- 1. Listar todos os fornecedores e seus produtos
SELECT fornecedor.nome AS fornecedor, produto.nome AS produto
FROM fornecedor
JOIN produto ON fornecedor.id_fornecedor = produto.id_fornecedor;

-- 2. Listar todos os funcionários e seus cargos
SELECT funcionario.nome AS funcionario, cargo.titulo AS cargo
FROM funcionario
JOIN cargo ON funcionario.id_cargo = cargo.id_cargo;

-- 3. Listar todos os clientes e suas compras
SELECT cliente.nome AS cliente, venda.id_venda AS venda
FROM cliente
JOIN venda ON cliente.id_cliente = venda.id_cliente;

-- 4. Listar todos os produtos e suas categorias
SELECT produto.nome AS produto, categoria_produto.nome AS categoria
FROM produto
JOIN produto_categoria ON produto.id_produto = produto_categoria.id_produto
JOIN categoria_produto ON produto_categoria.id_categoria = categoria_produto.id_categoria;

-- 5. Listar todas as vendas e os funcionários responsáveis
SELECT venda.id_venda AS venda, funcionario.nome AS funcionario
FROM venda
JOIN funcionario ON venda.id_funcionario = funcionario.id_funcionario;

-- 6. Listar todas as vendas e os clientes que compraram
SELECT venda.id_venda AS venda, cliente.nome AS cliente
FROM venda
JOIN cliente ON venda.id_cliente = cliente.id_cliente;

-- 7. Listar todos os produtos em promoção
SELECT produto.nome AS produto, desconto.desconto AS desconto
FROM produto
JOIN desconto ON produto.id_produto = desconto.id_produto;

-- 8. Listar todas as promoções ativas
SELECT promocao.id_promocao AS promocao, promocao.data_inicio, promocao.data_fim
FROM promocao
WHERE CURDATE() BETWEEN promocao.data_inicio AND promocao.data_fim;

-- 9. Listar todos os pagamentos realizados em uma data específica
SELECT pagamento.id_pagamento AS pagamento, pagamento.data_venda, pagamento.valor_pago
FROM pagamento
WHERE pagamento.data_venda = '2024-11-01';

-- 10. Listar todos os produtos de um fornecedor específico
SELECT produto.nome AS produto
FROM produto
WHERE produto.id_fornecedor = 1;

-- 11. Listar todos os funcionários de um cargo específico
SELECT funcionario.nome AS funcionario
FROM funcionario
WHERE funcionario.id_cargo = 1;

-- 12. Listar todas as vendas de um cliente específico
SELECT venda.id_venda AS venda
FROM venda
WHERE venda.id_cliente = 1;

-- 13. Listar todos os produtos de uma categoria específica
SELECT produto.nome AS produto
FROM produto
JOIN produto_categoria ON produto.id_produto = produto_categoria.id_produto
WHERE produto_categoria.id_categoria = 1;

-- 14. Listar todas as vendas de um produto específico
SELECT venda.id_venda AS venda
FROM venda
JOIN produto ON venda.id_venda = produto.id_produto
WHERE produto.id_produto = 1;

-- 15. Listar todos os pagamentos de uma venda específica
SELECT pagamento.id_pagamento AS pagamento, pagamento.valor_pago
FROM pagamento
WHERE pagamento.id_venda = 1;

-- 16. Listar todos os clientes que compraram um produto específico
SELECT DISTINCT cliente.nome AS cliente
FROM cliente
JOIN venda ON cliente.id_cliente = venda.id_cliente
JOIN produto ON venda.id_venda = produto.id_produto
WHERE produto.id_produto = 1;

-- 17. Listar todos os fornecedores de um produto específico
SELECT fornecedor.nome AS fornecedor
FROM fornecedor
JOIN produto ON fornecedor.id_fornecedor = produto.id_fornecedor
WHERE produto.id_produto = 1;

-- 18. Listar todos os funcionários que realizaram vendas em um período específico
SELECT DISTINCT funcionario.nome AS funcionario
FROM funcionario
JOIN venda ON funcionario.id_funcionario = venda.id_funcionario
WHERE venda.data_venda BETWEEN '2024-01-01' AND '2024-12-31';

-- 19. Listar todas as vendas realizadas em um período específico
SELECT venda.id_venda AS venda, venda.data_venda
FROM venda
WHERE venda.data_venda BETWEEN '2024-01-01' AND '2024-12-31';

-- 20. Listar todos os produtos que nunca foram vendidos
SELECT produto.nome AS produto
FROM produto
LEFT JOIN venda ON produto.id_produto = venda.id_venda
WHERE venda.id_venda IS NULL;
