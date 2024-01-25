# Conjunto de Links

## Visão Geral
Este é um agrupador de links. Cada conjunto de links recebe um ID, que pode ser utilizado em outras tabelas. Ele será usado no cadastro de pessoas, e na entrega de atividades.

O conjunto de links não tem telas para inclusão e edição. Quando necessário, ele é inserido diretamente  no banco de dados através de comandos SQL. No entanto, será necessário o desenvolvimento de telas para a manutenção dos links que compõe o conjunto.

## Inclusão e Alteração
Criar um objeto do tipo "Formulário" capaz de realizar as operações de __inclusão__ e __alteração__ de um link no conjunto de links.

_Atenção: Lembre-se de que para fazer a alteração, será necessário criar um parâmetro para receber o ID do registro, e que sempre será necessário passar o ID do conjunto de links._

## Listagem dos Dados
Criar um objeto do tipo "Consulta" para listar os links. 

### Parâmetros
|   Nome        | Descrição
|---------------|-----
| LinkSetId     | ID do Conjunto de Links, do tipo Numérico

### Colunas
Listar as seguintes informações:

| Coluna             | Comentário
|--------------------|-----
| Id                 | Id do link (Oculto e Chave)
| Nome               | Nome do link
| URL                | URL do link
       
### Operações

#### Inclusão
Adicione um botão para realizar a inclusão. Este botão deve chamar o objeto do tipo "Formulário" responsável pela inclusão do registro. 

Após a inclusão do novo registro, os dados precisam ser atualizados automaticamente na listagem de dados (Consulta).

#### Exclusão
Adicione uma coluna com um ícone que represente uma operação de exclusão, e adicione um link nesta coluna para executar um "Comando SQL" de exclusão do registro.

_Atenção: Não se esqueça de utilizar o ID do registro na clausula `Where` do comando de exclusão._

Mostre uma mensagem de confirmação antes de excluir:
> Deseja realmente excluir o link selecionado?

Após a exclusão do registro, os dados precisam ser atualizados automaticamente no listagem de dados.

#### Alteração
Adicione uma coluna com um ícone que represente uma operação de edição, e adicionar um link nesta coluna para abrir o objeto do tipo "Formulário" responsável pela edição do registro.

_Atenção: Não se esqueça de passar o parâmetro com Id do registro para o objeto de edição._

Após a edição do registro, os dados precisam ser atualizados automaticamente no listagem de dados.

## Especificações técnicas

Tabelas envolvidas:
- Tabela de conjunto de links: `campus.linkset`
- Tabela de links: `campus.linkset_links`

_Dica: Não se esquece da cláusula `GROUP BY`_





