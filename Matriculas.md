# Cadastros de Matriculas

## Visão Geral
Quando um aluno se inscreve para um curso, ele preenche algumas informações em um formulário, e essas informações geram o registro de uma __Matrícula__. 

Requisitos:

- Permitir a visualização de todas as matrículas
- Permitir incluir uma nova matrícula
- Permitir alterar uma matrícula existente
- Permitir excluir uma matrícula existente

## Inclusão 
Criar um objeto do tipo "Formulário" capaz de realizar a __inclusão__ de uma matrícula. 

Esse Formulário será disponibilizado aos interessados na inscrição. O interessado vai informar os seus dados, e uma matrícula será gerada.

### Campos
| Nome      | Comentários
|-----------|--------
| Turma     | Campo do tipo "ComboBox", listando os dados das turmas. Utilize o "nome do curso" + "nome da turma" para facilitar a identificação. 
| Nome      | Obrigatório
| Sobrenome | Obrigatório
| E-mail    | Obrigatório
| Celular   | Obrigatório. Utilize a máscara: `(00) 00000-0000`

## Alteração
Depois que a matrícula for gerada, o gestor do curso poderá alterar as informações.

### Campos
Todos os campos do formulário de inclusão, mais os campos a seguir:

| Nome             | Comentários
|------------------|--------
| Situação         | Campo do tipo "ComboBox" que permite trocar o status da matrícula. 
| Observações      | Texto multilinha.

## Listagem dos Dados
Criar um objeto do tipo "Consulta" para listar os dados das matríclas.

### Colunas
Listar as seguintes informações:

| Coluna             | Comentário
|--------------------|-----
| Id                 | Id da Matricula (Oculto e Chave)
| Curso              | Nome do Curso
| Turma              | Nome da Turma
| Situação           | Veja nos comentários da tabela o significado de cada Status.
| Nome               | Nome do inscrito
| Sobremome          | Sobrenome do inscrito
| E-mail             | 
| Fone               | 
| Data               | Data da matrícula

Crie formatações condicionais para cada situação de matrícula.
       
### Operações

#### Inclusão
Adicione um botão para realizar a inclusão. Este botão deve chamar o objeto do tipo "Formulário" responsável pela inclusão do registro. 

Após a inclusão do novo registro, os dados precisam ser atualizados automaticamente na listagem de dados (Consulta).

#### Exclusão
Adicione uma coluna com um ícone que represente uma operação de exclusão, e adicione um link nesta coluna para executar um "Comando SQL" de exclusão do registro.

_Atenção: Não se esqueça de utilizar o ID do registro na clausula `Where` do comando de exclusão._

Mostre uma mensagem de confirmação antes de excluir:
> Deseja realmente excluir o cadastro da matrícula selecionada?

Após a exclusão do registro, os dados precisam ser atualizados automaticamente no listagem de dados.

#### Alteração
Adicione uma coluna com um ícone que represente uma operação de edição, e adicione um link nesta coluna para abrir o objeto do tipo "Formulário" responsável pela edição do registro.

_Atenção: Não se esqueça de passar o parâmetro com Id do registro para o objeto de edição._

Após a edição do registro, os dados precisam ser atualizados automaticamente no listagem de dados.

## Especificações técnicas

- Tabela de matrículas: `campus.enrollments`
- Tabela de cursos: `campus.courses`
- Tabela de turmas: `campus.classes`


