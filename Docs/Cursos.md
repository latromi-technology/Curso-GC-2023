# Cadastros de Cursos

## Visão Geral
Este é o cadastro de Cursos do Campus Caldeira. Exmplos de cursos que podem ser cadastrados: 

- Geração Caldeira: Programação
- Geração Caldeira: Gestão e Vendas
- Geração Caldeira: UI/UX
- Geração Caldeira: Marketing

Requisitos:

- Permitir a visualização de todos os cursos
- Permitir incluir um novo cursos
- Permitir alterar um cursos existente
- Permitir excluir um cursos existente

## Inclusão e Alteração
Criar um objeto do tipo "Formulário" capaz de realizar as operações de __inclusão__ e __alteração__ de um curso.

_Atenção: Lembre-se de que para fazer a alteração, será necessário criar um parâmetro para receber o ID do registro._

## Listagem dos Dados
Criar um objeto do tipo "Consulta" para listar os dados do cadastro de cursos.

### Colunas
Listar as seguintes informações:

| Coluna             | Comentário
|--------------------|-----
| Id                 | Id do Curso (Oculto e Chave)
| Nome do Curso      | 
| Descrição do Curso |

### Operações

#### Inclusão
Adicione um botão para realizar a inclusão. Este botão deve chamar o objeto do tipo "Formulário" responsável pela inclusão do registro. 

Após a inclusão do novo registro, os dados precisam ser atualizados automaticamente no listagem de dados.

#### Exclusão
Adicione uma coluna com um ícone que represente uma operação de exclusão, e adicione um link nesta coluna para executar um "Comando SQL" de exclusão do registro.

_Atenção: Não se esqueça de utilizar o ID do registro na clausula `Where` do comando de exclusão._

Mostre uma mensagem de confirmação antes de excluir:
> Deseja realmente excluir o curso selecionado?

Após a exclusão do registro, os dados precisam ser atualizados automaticamente no listagem de dados.

#### Alteração
Adicione uma coluna com um ícone que represente uma operação de edição, e adicionar um link nesta coluna para abrir o objeto do tipo "Formulário" responsável pela edição do registro.

_Atenção: Não se esqueça de passar o parâmetro com Id do registro para o objeto de edição._

Após a edição do registro, os dados precisam ser atualizados automaticamente no listagem de dados.

## Especificações técnicas

Tabela de cursos: `campus.courses`


