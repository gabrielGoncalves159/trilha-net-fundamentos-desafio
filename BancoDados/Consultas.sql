
select * from ElencoFilme;
select * from Filmes;
select * from FilmesGenero;
select * from Generos;

-- Consulta Nome e Ano dos Filmes
select Nome, Ano from Filmes;

-- Consulta Filmes ordenados por Ano
select * from Filmes order by Ano;

-- Consulta filme especifico
select * from Filmes where Nome = 'De Volta para o Futuro';
select * from Filmes where Id = 28;

-- Consulta filme por Ano
select * from Filmes where Ano = 1997;

-- Consulta filme Anos 2000
select * from Filmes where Ano > 1999;

-- Consulta Filmes ordenados por Duração
select * from Filmes where Duracao > 100 order by Duracao;

-- Consulta quantidade de Filmes por ano apresentando os anos agrupados e ordenados por quantidade decrescente
select Ano, COUNT(Ano) AS quantidade from Filmes group by Ano order by quantidade DESC;

-- Consultar Artores pelo genero Masculino
select * from Atores where Genero = 'M';

-- Consultar apenas atrizes ordenadas pelo primeiro nome
select * from Atores where Genero = 'F' order by PrimeiroNome;

-- Consutar filmes e generos
select Nome, Genero from FilmesGenero filGe
left join Generos as ge on ge.id = filGe.Id
left join Filmes as fil on fil.id = filGe.Id;

-- Consutar filmes e generos trazendo apenas o genero mistério
select Nome, Genero from FilmesGenero filGe
left join Generos as ge on ge.id = filGe.Id
left join Filmes as fil on fil.id = filGe.Id
Where ge.Genero = 'Mistério';

-- Consutar filmes e generos trazendo apenas o genero mistério
select Nome, PrimeiroNome, UltimoNome, Papel from ElencoFilme ElFil
left join Atores as ato on ato.id = ElFil.Id
left join Filmes as fil on fil.id = ElFil.Id;