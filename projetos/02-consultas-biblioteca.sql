USE estudos_biblioteca;

-- Liste livros por tÃ­tulo.
SELECT titulo, autor FROM livros ORDER BY titulo;

-- Mostre emprÃ©stimos e o tÃ­tulo do livro associado.
SELECT e.nome_leitor, l.titulo, e.data_emprestimo, e.devolvido
FROM emprestimos AS e
JOIN livros AS l ON l.id = e.livro_id;

-- ExercÃ­cio: conte emprÃ©stimos por livro usando GROUP BY.