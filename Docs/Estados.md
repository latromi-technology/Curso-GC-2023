# Estados

## Visão Geral
Neste momento, não será preciso criar telas para cadastro de estados. Todos os estados brasileiros já foram cadastrados no banco de dados.

### Tela de Pesquisa
Criar um objeto do tipo "Browser" para permitir a pesquisa de estados em campos do tipo "Lookup".

Listar as seguintes informações:

| Coluna             | Comentário
|--------------------|-----
| Id                 | Id do Estados (Oculto)
| Estado             | Nome do Estado
| Sigla              | Código da UF 
| País               | Nome do País

_Atenção: Será necessário buscar o nome do país na tabela de países. Faça isso através de um `INNER JOIN`._

## Especificações técnicas

- Tabela de estados: `public.states`
- Tabela de países: `public.countries`