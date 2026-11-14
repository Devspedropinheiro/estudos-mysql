CREATE DATABASE IF NOT EXISTS estudos_biblioteca;
USE estudos_biblioteca;

CREATE TABLE livros (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(150) NOT NULL,
  autor VARCHAR(120) NOT NULL,
  ano_publicacao SMALLINT
);

CREATE TABLE emprestimos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  livro_id INT NOT NULL,
  nome_leitor VARCHAR(100) NOT NULL,
  data_emprestimo DATE NOT NULL,
  devolvido BOOLEAN NOT NULL DEFAULT FALSE,
  FOREIGN KEY (livro_id) REFERENCES livros(id)
);

INSERT INTO livros (titulo, autor, ano_publicacao) VALUES
('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 1943),
('A Ilha do Tesouro', 'Robert Louis Stevenson', 1883);

INSERT INTO emprestimos (livro_id, nome_leitor, data_emprestimo) VALUES
(1, 'Leitor de exemplo', '2026-01-10'),
(2, 'Leitora de exemplo', '2026-01-12');