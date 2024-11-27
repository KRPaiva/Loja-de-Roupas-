CREATE SCHEMA IF NOT EXISTS mydb DEFAULT CHARACTER SET utf8mb4;
USE mydb;

-- Tabela fornecedor
CREATE TABLE IF NOT EXISTS fornecedor (
  id_fornecedor INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(70) NOT NULL,
  PRIMARY KEY (id_fornecedor)
) ENGINE=InnoDB;

-- Tabela cargo
CREATE TABLE IF NOT EXISTS cargo (
  id_cargo INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_cargo)
) ENGINE=InnoDB;

-- Tabela funcionario
CREATE TABLE IF NOT EXISTS funcionario (
  id_funcionario INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(70) NOT NULL,
  telefone VARCHAR(15),
  id_cargo INT,
  PRIMARY KEY (id_funcionario),
  CONSTRAINT fk_funcionario_cargo FOREIGN KEY (id_cargo)
    REFERENCES cargo (id_cargo)
    ON DELETE SET NULL
    ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Tabela cliente
CREATE TABLE IF NOT EXISTS cliente (
  id_cliente INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  PRIMARY KEY (id_cliente)
) ENGINE=InnoDB;

-- Tabela telefone
CREATE TABLE IF NOT EXISTS telefone (
  id_telefone INT NOT NULL AUTO_INCREMENT,
  numero VARCHAR(15) NOT NULL,
  id_fornecedor INT,
  id_funcionario INT,
  id_cliente INT,
  PRIMARY KEY (id_telefone),
  FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor) ON DELETE CASCADE,
  FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario) ON DELETE SET NULL,
  FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente) ON DELETE SET NULL
) ENGINE=InnoDB;

-- Tabela endereço
CREATE TABLE IF NOT EXISTS endereco (
  id_endereco INT NOT NULL AUTO_INCREMENT,
  uf VARCHAR(2) NOT NULL,
  cidade VARCHAR(45) NOT NULL,
  bairro VARCHAR(45),
  cep VARCHAR(10) NOT NULL,
  rua VARCHAR(100),
  numero VARCHAR(10),
  complemento VARCHAR(45),
  id_fornecedor INT,
  id_funcionario INT,
  PRIMARY KEY (id_endereco),
  FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor) ON DELETE CASCADE,
  FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario) ON DELETE SET NULL
) ENGINE=InnoDB;

-- Tabela produto
CREATE TABLE IF NOT EXISTS produto (
  id_produto INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  preco DECIMAL(10, 2) NOT NULL,
  marca VARCHAR(45),
  cor VARCHAR(20),
  id_fornecedor INT NOT NULL,
  PRIMARY KEY (id_produto),
  FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor) ON DELETE CASCADE
) ENGINE=InnoDB;

-- Tabela venda
CREATE TABLE IF NOT EXISTS venda (
  id_venda INT NOT NULL AUTO_INCREMENT,
  desconto DECIMAL(5, 2),
  quantidade INT NOT NULL,
  id_funcionario INT,
  id_cliente INT,
  PRIMARY KEY (id_venda),
  FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario) ON DELETE SET NULL,
  FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente) ON DELETE SET NULL
) ENGINE=InnoDB;

-- Tabela forma_pag
CREATE TABLE IF NOT EXISTS forma_pag (
  id_forma_pag INT NOT NULL AUTO_INCREMENT,
  tipo VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_forma_pag)
) ENGINE=InnoDB;

-- Tabela pagamento
CREATE TABLE IF NOT EXISTS pagamento (
  id_pagamento INT NOT NULL AUTO_INCREMENT,
  data_venda DATE NOT NULL,
  valor_pago DECIMAL(10, 2) NOT NULL,
  id_venda INT,
  id_forma_pag INT,
  PRIMARY KEY (id_pagamento),
  FOREIGN KEY (id_venda) REFERENCES venda(id_venda) ON DELETE CASCADE,
  FOREIGN KEY (id_forma_pag) REFERENCES forma_pag(id_forma_pag) ON DELETE CASCADE
) ENGINE=InnoDB;

-- Tabela categoria_produto
CREATE TABLE IF NOT EXISTS categoria_produto (
  id_categoria INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_categoria)
) ENGINE=InnoDB;

-- Tabela produto_categoria
CREATE TABLE IF NOT EXISTS produto_categoria (
  id_produto INT NOT NULL,
  id_categoria INT NOT NULL,
  PRIMARY KEY (id_produto, id_categoria),
  FOREIGN KEY (id_produto) REFERENCES produto(id_produto) ON DELETE CASCADE,
  FOREIGN KEY (id_categoria) REFERENCES categoria_produto(id_categoria) ON DELETE CASCADE
) ENGINE=InnoDB;

-- Tabela promocao
CREATE TABLE IF NOT EXISTS promocao (
  id_promocao INT NOT NULL AUTO_INCREMENT,
  data_inicio DATE NOT NULL,
  data_fim DATE NOT NULL,
  PRIMARY KEY (id_promocao)
) ENGINE=InnoDB;

-- Tabela desconto
CREATE TABLE IF NOT EXISTS desconto (
  id_promocao INT,
  id_produto INT,
  desconto DECIMAL(5, 2) NOT NULL,
  PRIMARY KEY (id_promocao, id_produto),
  FOREIGN KEY (id_promocao) REFERENCES promocao(id_promocao) ON DELETE CASCADE,
  FOREIGN KEY (id_produto) REFERENCES produto(id_produto) ON DELETE CASCADE
) ENGINE=InnoDB;

-- Restaurar configurações anteriores
SET @OLD_SQL_MODE = IFNULL(@OLD_SQL_MODE, '');
SET @OLD_FOREIGN_KEY_CHECKS = IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1);
SET @OLD_UNIQUE_CHECKS = IFNULL(@OLD_UNIQUE_CHECKS, 1);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
