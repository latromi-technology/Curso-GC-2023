# Cadastros de Turmas

## Visão Geral
Uma turma está vinculada a um curso. Exemplos: 

- Curso 
   - "Geração Caldeira: Programação"
- Turma
   - 2023

Requisitos:

- Permitir a visualização de todas as turmas
- Permitir incluir uma nova turma
- Permitir alterar uma turma existente
- Permitir excluir uma turma existente

## Inclusão e Alteração
Criar um objeto do tipo "Formulário" capaz de realizar as operações de __inclusão__ e __alteração__ de uma turma.

_Atenção: Lembre-se de que para fazer a alteração, será necessário criar um parâmetro para receber o ID do registro._

## Listagem dos Dados
Criar um objeto do tipo "Consulta" para listar os dados do cadastro de turmas.


### Colunas
Listar as seguintes informações:

| Coluna             | Comentários
|--------------------|-----
| Id                 | Id da turma (Oculto e Chave)
| Nome do Curso      | Buscar da tabela de cursos
| Turma              | Nome da Turma 
| Professor          | Buscar na tabela de pessoas
| Inicio             | Formato `{0:dd/MM/yyyy}`
| Fim                | Formato `{0:dd/MM/yyyy}`

### Operações

#### Inclusão
Adicione um botão para realizar a inclusão. Este botão deve chamar o objeto do tipo "Formulário" responsável pela inclusão do registro. 

Após a inclusão do novo registro, os dados precisam ser atualizados automaticamente na listagem de dados.

#### Exclusão
Adicione uma coluna com um ícone que represente uma operação de exclusão, e adicione um link nesta coluna para executar um "Comando SQL" de exclusão do registro.

_Atenção: Não se esqueça de utilizar o ID do registro na clausula `Where` do comando de exclusão._

Mostre uma mensagem de confirmação antes de excluir:
> Deseja realmente excluir a turma selecionada?

Após a exclusão do registro, os dados precisam ser atualizados automaticamente na listagem de dados.

#### Alteração
Adicione uma coluna com um ícone que represente uma operação de edição, e adicione um link nesta coluna para abrir o objeto do tipo "Formulário" responsável pela edição do registro.

_Atenção: Não se esqueça de passar o parâmetro com Id do registro para o objeto de edição._

Após a edição do registro, os dados precisam ser atualizados automaticamente na listagem de dados (Consulta).


## Especificações técnicas

- Tabela de turmas: `campus.classes`
- Tabela de monitores da turma: `campus.classes_monitors`


