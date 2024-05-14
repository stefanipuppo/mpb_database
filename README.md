# Banco de Dados de Artistas e Músicas da MPB

Este projeto consiste em um banco de dados relacional que armazena informações sobre artistas e músicas da Música Popular Brasileira (MPB).

## Estrutura do Banco de Dados

O banco de dados é composto por duas tabelas principais:

### Tabela `artistas`

- `id`: Identificador único do artista (chave primária).
- `nome`: Nome do artista.
- `genero`: Gênero musical do artista.
- `ano_formacao`: Ano de formação do artista.

### Tabela `musicas`

- `id`: Identificador único da música (chave primária).
- `nome`: Nome da música.
- `artista_id`: Identificador do artista associado à música (chave estrangeira referenciando a tabela `artistas`).
- `ano_lancamento`: Ano de lançamento da música.
