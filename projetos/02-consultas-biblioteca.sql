USE estudos_biblioteca;

-- Liste livros por título.
SELECT titulo, autor FROM livros ORDER BY titulo;

-- Mostre empréstimos e o título do livro associado.
SELECT e.nome_leitor, l.titulo, e.data_emprestimo, e.devolvido
FROM emprestimos AS e
JOIN livros AS l ON l.id = e.livro_id;

-- Conte empréstimos por livro.
SELECT l.titulo, COUNT(e.id) AS total_emprestimos
FROM livros AS l
LEFT JOIN emprestimos AS e ON e.livro_id = l.id
GROUP BY l.id, l.titulo
ORDER BY total_emprestimos DESC;