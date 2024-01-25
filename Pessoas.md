# Cadastros de Pessoas

## Visão Geral
Este é o cadastro base de pessoas, onde dados comuns são armazenados, como nome, endereço e contato.

Cadastros mais específicos, como o de Professores e Alunos estarão relacionados ao cadastro base através de uma `FOREIGN KEY`.

Requisitos:

- Permitir a visualização de todos os cadastros
- Permitir incluir um novo cadastro
- Permitir alterar um cadastro existente
- Permitir excluir um cadastro existente

## Listagem dos Dados
Criar um objeto do tipo "Consulta" para listar os dados do cadastro de pessoas.

### Colunas
Listar as seguintes informações:

| Coluna            | Comentário
|-------------------|-----
| Id                | Id da Pessoa (Oculto e Chave)
| Nome Completo     | Nome da Pessoa (FirstName + LastName)
| E-mail            |
| Telefone          | Telefone formatado
| Cidade            | 
| UF                | Sigla do Estado
| CEP               |
| Dt. Nascimento    | Data de Nascimento

### Operações

#### Inclusão e Alteração
Criar um objeto do tipo "Formulário" capaz de realizar as operações de __inclusão__ e __alteração__ de um cadastro.

_Atenção: Lembre-se de que para fazer a alteração, será necessário criar um parâmetro para receber o ID do registro._

#### Inclusão
Adicione um botão para realizar a inclusão. Este botão deve chamar o objeto do tipo "Formulário" responsável pela inclusão do registro. 

Após a inclusão do novo registro, os dados precisam ser atualizados automaticamente no listagem de dados.

#### Exclusão
Adicione uma coluna com um ícone que represente uma operação de exclusão, e adicione um link nesta coluna para executar um "Comando SQL" de exclusão do registro.

_Atenção: Não se esqueça de utilizar o ID do registro na clausula `Where` do comando de exclusão._

Mostre uma mensagem de confirmação antes de excluir:
> Deseja realmente excluir o cadastro selecinado?

Após a exclusão do registro, os dados precisam ser atualizados automaticamente no listagem de dados.

#### Alteração
Adicione uma coluna com um ícone que represente uma operação de edição, e adicionar um link nesta coluna para abrir o objeto do tipo "Formulário" responsável pela edição do registro.

_Atenção: Não se esqueça de passar o parâmetro com Id do registro para o objeto de edição._

Após a edição do registro, os dados precisam ser atualizados automaticamente no listagem de dados.

## Especificações técnicas

Tabela de pessoas: `public.people`