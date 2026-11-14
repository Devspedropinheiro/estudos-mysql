CREATE DATABASE IF NOT EXISTS estudos_loja;
USE estudos_loja;
CREATE TABLE produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  preco DECIMAL(10,2) NOT NULL CHECK (preco >= 0),
  estoque INT NOT NULL DEFAULT 0
);
INSERT INTO produtos (nome, preco, estoque) VALUES
('Caderno', 18.50, 20), ('Caneta', 3.25, 50);
SELECT nome, preco FROM produtos WHERE estoque > 0 ORDER BY preco;