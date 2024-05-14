CREATE DATABASE mpb_database;

\c mpb_database;

CREATE TABLE artistas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    genero VARCHAR(100),
    ano_formacao INTEGER
);

CREATE TABLE musica (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    artista_id INTEGER REFERENCES artistas(id),
    ano_lancamento INTEGER
);

INSERT INTO artistas (nome, genero, ano_formacao) VALUES
    ('Tom Jobim', 'Bossa Nova', 1956),
    ('Chico Buarque', 'MPB', 1966),
    ('Elis Regina', 'MPB', 1961),
    ('Caetano Veloso', 'Tropicalia', 1965),
    ('Gilberto Gil', 'Tropicalia', 1965),
    ('Gal Costa', 'Tropicalia', 1965),
    ('Milton Nascimento', 'MPB', 1963),
    ('Vinicius de Moraes', 'Bossa Nova', 1956),
    ('Maria Bethânia', 'MPB', 1965),
    ('João Gilberto', 'Bossa Nova', 1956);
    ('Djavan', 'MPB', 1975),
    ('Zélia Duncan', 'MPB', 1981),
    ('Seu Jorge', 'MPB', 1998),
    ('Cássia Eller', 'MPB', 1980);
    ('Lenine', 'MPB', 1979);


INSERT INTO musica (nome, artista_id, ano_lancamento) VALUES
    ('Garota de Ipanema', 1, 1964),
    ('Construção', 2, 1971),
    ('Como Nossos Pais', 3, 1976),
    ('Você é Linda', 4, 1972),
    ('Aquele Abraço', 5, 1969),
    ('Baby', 6, 1969),
    ('Travessia', 7, 1967),
    ('Eu Sei Que Vou Te Amar', 8, 1959),
    ('Olhos nos Olhos', 9, 1979),
    ('Chega de Saudade', 10, 1959);
    ('Flor de Lis', 11, 1976);
    ('Catedral', 12, 1994);
    ('Burguesinha', 13, 2004)
    ('Por Enquanto', 14, 1984)
    ('Paciência', 15, 1999);