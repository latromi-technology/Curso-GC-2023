# Cadastros de Monitores

## Visão Geral
Este é o cadastro de monitores. Monitor é uma pessoa que auxilia o professor durante a aula.

O Cadastro do monitor exige uma entrada no cadastro de pessoas. Existe um relacionamento entre as duas tabelas. 

Requisitos:

- Permitir a visualização de todos os monitores
- Permitir incluir um novo monitor
- Permitir alterar um monitor existente
- Permitir excluir um monitor existente

## Inclusão e Alteração
Criar um objeto do tipo "Formulário" capaz de realizar as operações de __inclusão__ e __alteração__ de um monitor.

_Atenção: Lembre-se de que para fazer a alteração, será necessário criar um parâmetro para receber o ID do registro._

## Listagem dos Dados
Criar um objeto do tipo "Consulta" para listar os dados dos monitores.

### Colunas
Listar as seguintes informações:

| Coluna             | Comentários
|--------------------|-----
| Id                 | Id do monitor (Oculto e Chave)
| Monitor            | Buscar o nome no cadastro de pessoas
| Funções            | Funções do monitor
| Turmas             | Trazer o nome de todas as turmas ao qual o monitor está vinculado, separadas por vírgula.
| Admissão           | Data em que o monitor começou a trabalhar na escola
| Desligamento       | Data em que o monitor deixou de trabalhar na escola

       
### Operações

#### Inclusão
Adicione um botão para realizar a inclusão. Este botão deve chamar o objeto do tipo "Formulário" responsável pela inclusão do registro. 

Após a inclusão do novo registro, os dados precisam ser atualizados automaticamente no listagem de dados.

#### Exclusão
Adicione uma coluna com um ícone que represente uma operação de exclusão, e adicione um link nesta coluna para executar um "Comando SQL" de exclusão do registro.

_Atenção: Não se esqueça de utilizar o ID do registro na clausula `Where` do comando de exclusão._

Mostre uma mensagem de confirmação antes de excluir:
> Deseja realmente excluir o cadastro do monitor selecionado?

Após a exclusão do registro, os dados precisam ser atualizados automaticamente no listagem de dados.

#### Alteração
Adicione uma coluna com um ícone que represente uma operação de edição, e adicionar um link nesta coluna para abrir o objeto do tipo "Formulário" responsável pela edição do registro.

_Atenção: Não se esqueça de passar o parâmetro com Id do registro para o objeto de edição._

Após a edição do registro, os dados precisam ser atualizados automaticamente no listagem de dados.

## Especificações técnicas

Tabelas envolvidas:
- Tabela de pessoas: `public.people`
- Tabela de monitores: `campus.monitors`

Para retornar o nome de todas as turmas em uma mesma coluna, será necessário utilizar a função de agregação [`ARRAY_AGG`](https://www.postgresqltutorial.com/postgresql-aggregate-functions/postgresql-array_agg/) do __Postgres__. 

_Dica: Não se esquece da cláusula `GROUP BY`_





