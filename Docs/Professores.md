# Cadastros de Professores

## Visão Geral
Este é o cadastro de professores. O Cadastro do professor exige uma entrada no cadastro de pessoas. Existe um relacionamento entre as duas tabelas. 

Requisitos:

- Permitir a visualização de todos os professores
- Permitir incluir um novo professor
- Permitir alterar um professor existente
- Permitir excluir um professor existente

## Inclusão e Alteração
Criar um objeto do tipo "Formulário" capaz de realizar as operações de __inclusão__ e __alteração__ de um professor.

_Atenção: Lembre-se de que para fazer a alteração, será necessário criar um parâmetro para receber o ID do registro._

## Listagem dos Dados
Criar um objeto do tipo "Consulta" para listar os dados dos professores.

### Colunas
Listar as seguintes informações:

| Coluna             | Comentário
|--------------------|-----
| Id                 | Id do Professor (Oculto e Chave)
| Professor          | Buscar o nome no cadastro de pessoas
| Matéria            | Assunto lecionado pelo professor
| Idade              | Buscar a data de nascimento no cadastro de pessoas para calcular a idade do professor
| Admissão           | Data em que o professor começou a trabalhar na escola
| Desligamento       | Data em que o professor deixou de trabalhar na escola

_Dica: Para calcular a idade use uma expressão no comando SQL: `CURRENT_DATE - people.birthdate`._
       
### Operações

#### Inclusão
Adicione um botão para realizar a inclusão. Este botão deve chamar o objeto do tipo "Formulário" responsável pela inclusão do registro. 

Após a inclusão do novo registro, os dados precisam ser atualizados automaticamente no listagem de dados.

#### Exclusão
Adicione uma coluna com um ícone que represente uma operação de exclusão, e adicione um link nesta coluna para executar um "Comando SQL" de exclusão do registro.

_Atenção: Não se esqueça de utilizar o ID do registro na clausula `Where` do comando de exclusão._

Mostre uma mensagem de confirmação antes de excluir:
> Deseja realmente excluir o cadastro do professor selecionado?

Após a exclusão do registro, os dados precisam ser atualizados automaticamente no listagem de dados.

#### Alteração
Adicione uma coluna com um ícone que represente uma operação de edição, e adicionar um link nesta coluna para abrir o objeto do tipo "Formulário" responsável pela edição do registro.

_Atenção: Não se esqueça de passar o parâmetro com Id do registro para o objeto de edição._

Após a edição do registro, os dados precisam ser atualizados automaticamente no listagem de dados.

## Especificações técnicas

- Tabela de pessoas: `public.people`
- Tabela de professores: `campus.teachers`


