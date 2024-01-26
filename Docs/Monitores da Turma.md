# Monitores da Turma

## Visão Geral
O objetivo deste recurso é criar um meio do gestor do curso gerenciar os monitores de uma turma. 

O gestor precisa ser capaz de incluir e remover monitores (previamente cadastrados) em uma turma.

Para este desenvolvimento, serão necessários 2 objetos:
- 1 Consulta (Listagem dos dados)
- 1 Formulário (Inclusão de monitor na turma)

## Inclusão
Crie um objeto do tipo "Formulário" capaz de __incluir__ um monitor em uma turma. O monitor precisa estar previamente registrado no cadastro de monitores.

## Listagem dos Dados
Crie um objeto do tipo "Consulta" para listar os monitores associados a uma turma.

### Parâmetros
|   Nome        | Comentários
|---------------|------------------------------------
| ClassId       | ID da turma onde os monitores serão adicionados ou removidos

### Colunas
Listar as seguintes informações:

| Coluna             | Comentários
|--------------------|-----
| Id da turma        | (Oculto e Chave)
| Id do monitor      | (Oculto e Chave)
| Nome do monitor    | Buscar da tabela de pessoas

### Operações

#### Inclusão
Adicione um botão para realizar a inclusão de um monitor em uma turma. Este botão deve chamar o objeto do tipo "Formulário" responsável pela inclusão do registro. 

Após a inclusão do novo registro, os dados precisam ser atualizados automaticamente na listagem de dados (Consulta).

#### Desassociação
Adicione uma coluna com um ícone que represente uma operação de __desassociação__, e adicione um link nesta coluna para executar um "Comando SQL" que vai remover o monitor da turma.

Para tornar a operação mais prática, __não mostre__ uma mensagem de confirmação antes de excluir.

_Atenção: Não se esqueça de utilizar os campos chaves da tabela na clausula `Where` do comando de exclusão._

Após a desassociação do monitor, os dados precisam ser atualizados automaticamente na listagem de dados (Consulta).

## Especificações técnicas

- Tabela de turmas: `campus.classes`
- Tabela de monitores da turma: `campus.classes_monitors`
- Tabela de monitores: `campus.monitors`
- Tabela de pessoas: `campus.people`



