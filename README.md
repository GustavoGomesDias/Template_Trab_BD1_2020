# TRABALHO 01:  YourDelivery
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Gustavo Gomes Dias:01gustavodias@gmail.com<br>
Ricardo Rocha Ribeiro:r3ifes@gmail.com<br>
...<br>

### 2.INTRODUÇÃO E MOTIVAÇÃO<br>
Este documento contém a especificação do projeto do banco de dados YourDelivery 
<br>e motivação da escolha realizada. <br>

> A empresa "Devcom Projetos" visa colaborar com desenvolvimento de projetos para uma sociedade melhor. Sabendo-se dos desafios para gerenciar projetos dentro de uma empresa e visando unir as informações relativas a funcionários, departamentos e projetos em um mesmo local, ficamos motivados com o desenvolvimento deste sistema. O Sistema "Devcom" tem como objetivo gerenciar todas as informações ao desenvolvimento das atividades de projetos em diversas localidades do país. Para realizar suas operações adequadamente e empresa necessita que sistema que armazene informações relativas aos Projetos, Departamentos e Empregados, além de também armazenar dados sobre  Dependentes e Históricos de Salário dos empregados. O sistema deverá gerar um conjunto de relatórios que por sua vez atenderá os anseios da empresa em questão.
 

### 3.MINI-MUNDO<br>

Descrever o mini-mundo! (Não deve ser maior do que 30 linhas, se necessário resumir para justar) <br>
Entrevista com o usuário e identificação dos requisitos.(quando for o caso de sistemas com cliente  real)<br>
Descrição textual das regras de negócio definidas como um  subconjunto do mundo real 
cujos elementos são propriedades que desejamos incluir, processar, armazenar, 
gerenciar, atualizar, e que descrevem a proposta/solução a ser desenvolvida.

> O sistema proposto para a "Devcom Projetos conterá as informacões aqui detalhadas. Dos Projetos serão armazenados o número, nome e cidade. Dos Departamentos serão armazenados o número e nome. O cliente destacou que cada projeto pode ter vários departamentos auxiliando no seu desenvolvimento, e cada departamento pode estar envolvido em vários projetos. Os dados relativos aos empregados que serão armazenados são: rg, nome, cpf, salário, data inicial do salario e supervisor de cada empregado. É importante destacar que cada empregado pode ser supervisionado por outro empregado, e obrigatoriamente deve estar alocado a um único departamento, mas pode gerenciar vários departamentos ou não gerenciar nenhum. Um empregado também pode participar de vários projetos, caso seja necessário, mas não precisa obrigatoriamente estar alocado em algum projeto. Com relação aos dependentes serão armazenadas as informações de nome do dependente, data de nascimento, sexo e grau de parentesco. Cada empregado pode ter vários dependentes, mas um dependente esta associado apenas a um único empregado. Com relação ao histórico de salário devemos armazenar as informações de valor do salário, data de início do salário no período e data final do salário no período. É importante lembrar que cada funcionario pode ter diversos eventos de histórico de salário associados a ele visto que este dado pode ser alterado várias vezes. 

### 4.PROTOTIPAÇÃO, PERGUNTAS A SEREM RESPONDIDAS E TABELA DE DADOS<br>
#### 4.1 RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>

Sugestão: https://balsamiq.com/products/mockups/<br>

![Alt text](https://github.com/discipbd1/trab01/blob/master/balsamiq.png?raw=true "Title")
![Arquivo PDF do Protótipo Balsamiq feito para Empresa Devcom](https://github.com/discipbd1/trab01/blob/master/arquivos/EmpresaDevcom.pdf?raw=true "Empresa Devcom")
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
> A Empresa DevCom precisa inicialmente dos seguintes relatórios:
* Relatório que mostre o nome de cada supervisor(a) e a quantidade de empregados supervisionados.
* Relatório relativo aos os supervisores e supervisionados. O resultado deve conter o nome do supervisor e nome do supervisionado além da quantidade total de horas que cada supervisionado tem alocada aos projetos existentes na empresa.
* Relatorio que mostre para cada linha obtida o nome do departamento, o valor individual de cada salario existente no  departamento e a média geral de salarios dentre todos os empregados. Os resultados devem ser apresentados ordenados por departamento.
* Relatório que mostre as informações relacionadas a todos empregados de empresa (sem excluir ninguém). As linhas resultantes devem conter informações sobre: rg, nome, salario do empregado, data de início do salario atual, nomes dos projetos que participa, quantidade de horas e localização nos referidos projetos, numero e nome dos departamentos aos quais está alocado, informações do historico de salário como inicio, fim, e valores de salarios antigos que foram inclusos na referida tabela (caso possuam informações na mesma), além de todas informações relativas aos dependentes. 
>> ##### Observações: <br> a) perceba que este relatório pode conter linhas com alguns dados repetidos (mas não todos). <br>  b) para os empregados que não possuirem alguma destas informações o valor no registro deve aparecer sem informação/nulo. 
* Relatório que obtenha a frequencia absoluta e frequencia relativa da quantidade de cpfs únicos no relatório anterior. Apresente os resultados ordenados de forma decrescente pela frequencia relativa.

 
 
#### 4.3 TABELA DE DADOS DO SISTEMA:
- [Link da tabela no google docs](https://docs.google.com/spreadsheets/d/13_0Fg4CH-A-yabEl_K-JrE4yPIx7Xz_6iWWepAXBzsE/edit?usp=sharing)
- [Link arquivo csv](https://github.com/GustavoGomesDias/YourDelivery/blob/master/arquivos_trabalho/tabela/yourDelivery.csv) (tá neste repo e é possível ver a tabela formatada)
- [Download do arquivo xlsx](https://github.com/GustavoGomesDias/YourDelivery/blob/master/arquivos_trabalho/tabela/yourDelivery.xlsx?raw=true)
    
### 5.MODELO CONCEITUAL<br>
![Modelo Conceitual](https://github.com/GustavoGomesDias/YourDelivery/blob/master/arquivos_trabalho/modelos/conceitual.png)

- Principais entidades
  - Entrega;
  - Cliente;
  - Entregador;    
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 Descrição dos dados 
CLIENTE: Tabela que armazena as informações dos clientes da empresa.<br>
CODIGO: Campo que refere-se a identificação de cada cliente na tabela CLIENTE.<br>
TELEFONE: Campo que guarda o número de telefone de cada um dos clientes da empresa.<br>
NOME: Campo que guarda o nome completo dos clientes.<br>
ENDERECO: Campo que guarda o endereço de cada um dos clientes.<br>

---

PESSOA_FISICA: Tabela que armazena informações específicas de clientes que são pessoas físicas.<br>
CODIGO: Campo que armazena um código referente ao campo CODIGO que está na tabela CLIENTES, ele associa as informações específicas armazenadas aqui com as informações gerais armazenadas na tabela CLIENTE.<br>
CPF: Campo que armazena o Cadastro de Pessoa Física de cada pessoa física que é cliente da empresa.<br>

---

PESSOA_JURIDICA: Tabela que armazena informações específicas de clientes que são pessoas jurídicas.<br>
CODIGO: Campo que armazena um código referente ao campo CODIGO que está na tabela CLIENTES, ele associa as informações específicas armazenadas aqui com as informações gerais armazenadas na tabela CLIENTE.<br>
CNPJ: Campo que armazena o Cadastro Nacional de Pessoa Jurídica de cada pessoa jurídica que é cliente da empresa.<br>

---

ENTREGA: Tabela que guarda informações referentes as entregas feitas pela empresa.<br>
CODIGO: Campo que refere-se a identificação da entrega dentro da tabela ENTREGA.<br>
DATA_ENVIO: Campo que guarda a data em que o remetente enviou ou programou para que a entrega fosse enviada até seu destino.<br>
DATA_RECEBIMENTO: Campo que guarda a data em que a entrega chegou no seu destinatário.<br>

---

ENTREGADOR: Tabela que guarda as informações de todos os entregadores que trabalham na empresa.<br>
CPF: Campo que armazena o Cadastro de Pessoa Física de cada entregador trabalhando para a empresa.<br>
NOME: Campo que armazena o nome de cada entregador trabalhando para a empresa.<br>
TELEFONE: Campo que armazena o telefone de cada entregador trabalhando para a empresa.<br>


### 6	MODELO LÓGICO<br>
![Modelo Lógico](https://github.com/GustavoGomesDias/YourDelivery/blob/master/arquivos_trabalho/modelos/logico.png)

### 7	MODELO FÍSICO<br>
##### CLIENTE
```sql
CREATE TABLE CLIENTE(
	codigo integer NOT NULL,
	nome varchar(100),
	telefone varchar(16),
	estado varchar(2),
	cidade varchar(100),
	bairro varchar(100),
	rua varchar(100),
	numero_end integer,
	PRIMARY KEY (codigo)
);
```
##### PESSOA_FISICA
```sql
CREATE TABLE PESSOA_FISICA(
	codigo integer NOT NULL,
	cpf varchar(11),
	FOREIGN KEY(codigo) REFERENCES cliente(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);
```
##### PESSOA_JURIDICA
```sql
CREATE TABLE PESSOA_JURIDICA(
	codigo integer NOT NULL,
	cnpj varchar(14),
	FOREIGN KEY(codigo) REFERENCES cliente(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);
```
##### ENTREGADOR
```sql
CREATE TABLE ENTREGADOR(
	cpf varchar(11) NOT NULL,
	nome varchar(100),
	telefone varchar(16),
	PRIMARY KEY (cpf)
);
```
##### ENTREGA
```sql
CREATE TABLE ENTREGA(
    codigo integer NOT NULL,
    cliente_envio integer NOT NULL,
    cliente_recebe integer NOT NULL,
    entregador_cpf varchar(11) NOT NULL,
    data_envio date,
    data_recebimento date,
    PRIMARY KEY (codigo),
    FOREIGN KEY (cliente_envio) REFERENCES cliente(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (cliente_recebe) REFERENCES cliente(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (entregador_cpf) REFERENCES entregador(cpf) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);
```
        
       
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### Drop
```sql
DROP TABLE IF EXISTS cliente CASCADE;
DROP TABLE IF EXISTS pessoa_fisica;
DROP TABLE IF EXISTS pessoa_juridica;
DROP TABLE IF EXISTS entregador CASCADE;
DROP TABLE IF EXISTS entrega;
```

#### Create
```sql
CREATE TABLE CLIENTE(
	codigo integer NOT NULL,
	nome varchar(100),
	telefone varchar(16),
	estado varchar(2),
	cidade varchar(100),
	bairro varchar(100),
	rua varchar(100),
	numero_end integer,
	PRIMARY KEY (codigo)
);

CREATE TABLE PESSOA_FISICA(
	codigo integer NOT NULL,
	cpf varchar(11),
	FOREIGN KEY(codigo) REFERENCES cliente(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE PESSOA_JURIDICA(
	codigo integer NOT NULL,
	cnpj varchar(14),
	FOREIGN KEY(codigo) REFERENCES cliente(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ENTREGADOR(
	cpf varchar(11) NOT NULL,
	nome varchar(100),
	telefone varchar(16),
	PRIMARY KEY (cpf)
);

CREATE TABLE ENTREGA(
    codigo integer NOT NULL,
    cliente_envio integer NOT NULL,
    cliente_recebe integer NOT NULL,
    entregador_cpf varchar(11) NOT NULL,
    data_envio date,
    data_recebimento date,
    PRIMARY KEY (codigo),
    FOREIGN KEY (cliente_envio) REFERENCES cliente(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (cliente_recebe) REFERENCES cliente(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (entregador_cpf) REFERENCES entregador(cpf) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);
```
#### Insert
```sql
INSERT INTO CLIENTE
VALUES
	(1, 'João Martins', '11911111111', 'ES', 'Serra', 'Bairro das Rosas', 'Caramelo', 11),
	(2, 'Danilo Castro Ferreira', '19933355914', 'SP', 'Sumaré', 'Sensatez', 'Rua Grécia', 570),
	(3, 'Martim Castro Pinto', '21950609917', 'RJ', 'Rio de Janeiro', 'Carvalho', 'Rua do Trabalho', 1367),
	(4, 'Laura Melo Santos', '21986236017', 'RJ', 'São Gonçalo', 'Bairro da Paz', 'Rua Mário Viana', 1099),
	(5, 'Matilde Melo Santos', '11926222140', 'SP', 'São Paulo', 'Carlos Luz', 'Praça Alfredo Issa', 1231),
	(6, 'Kauê Cardoso Goncalves', '61947413132', 'DF', 'Gama', 'Cajares', 'Rua P 4', 1478),
	(7, 'Bruno Dias Pereira', '11974744573', 'SP', 'Osasco', 'Lagoas', 'Rua Domingos Bastazini', 1486),
	(8, 'Pastelaria Teixeira', '27967056547', 'ES', 'São Mateus', 'Bela Vista', 'Pará', 495),
	(9, 'Padaria União', '98937586073', 'MA', 'São Luís', 'Industrial', 'Paraná', 7663),
	(10, 'Pietra e Nina Publicidade e Propaganda ME', '11999855952', 'SP', 'Itatiba', 'Jardim América', 'Rua Augusto Eduardo Berti', 898),
	(11, 'Carolina e Sônia Lavanderia ME', '64998505506', 'GO', 'Rio Verde', 'Vila Amália', 'Rua 5', 211),
	(12, 'Ian e Ester Vidros ME', '61987759223', 'GO', 'Luziânia', 'Parque Estrela Dalva V', 'Rua 67', 816),
	(13, 'Martin e Daniel Ferragens ME', '68985116420', 'AC', 'Rio Branco', 'Bahia Velha', 'Beco Cecília Freitas', 266),
	(14, 'Apollo Artigos Gerais', '63989572172', 'TO', 'Gurupi', 'Shangri-Lá', 'Rua B 2', 989),
	(18, 'Joaquim e Stefany Comercio de Bebidas Ltda', '11994625578', 'SP', 'São Paulo', 'Jabaquara', 'Rua Monsenhor Basílio Pereira', 521),
	(19, 'Anthony e Alexandre Pães e Doces Ltda', '15994767868', 'SP', 'Sorocaba', 'Vila Zacarias', 'Rua Doutor Sydneu Antônio Urban', 286),
	(20, 'Sua Pizza Delivery ME', '18991644147', 'GO', 'Rio Verde', 'Catelandia', 'Rua Major Rocha', 1517);
```
##### PESSOA_FISICA
```sql
INSERT INTO pessoa_fisica
VALUES
	(1, '75198965014'),
	(2, '48972624020'),
	(3, '67941668289'),
	(4, '44585241787'),
	(5, '43388477000'),
	(6, '22244606007'),
	(7, '31370743041');
```
##### PESSOA_JURIDICA
```sql
INSERT INTO pessoa_juridica
VALUES
	(8, '19215089000131'),
	(9, '86567879000173'),
	(10, '31750078000157'),
	(11, '04046901000175'),
	(12, '67332463000121'),
	(13, '92712036000116'),
	(14, '03436907000196'),
    (18, '62319531000107'),
	(19, '57740003000189'),
	(20, '32545024000112');
```
##### ENTREGADOR
```sql
INSERT INTO entregador
VALUES
	('87712919038', 'Rafael Cardoso Correia', '11947705880'),
	('91773289063', 'Rodrigo Cardoso Dias', '61939542649'),
	('54282005025', 'Thaís Ribeiro Barros', '19954754928'),
	('52872702083', 'Mateus Sousa Costa', '61998679042'),
	('04295519081', 'Sarah Correia Barros', '31985966293'),
	('39706964029', 'Luis Oliveira Ribeiro', '93935138484'),
	('93528591030', 'Gustavo Alves Rocha', '21942156639'),
	('44808974967', 'Anna Oliveira Pinto', '1991312944'),
	('12671964919', 'Livia Castro Rodrigues', '8191202990');
```
##### ENTREGA
```sql
INSERT INTO entrega
VALUES
	(1, 2, 3, '52872702083', '2012-06-01', '2012-07-05'),
	(2, 2, 3, '52872702083', '2013-02-01', '2013-03-06'),
	(3, 1, 5, '87712919038', '2018-04-01', '2018-04-12'),
	(4, 14, 6, '93528591030', '2020-03-14', '2020-03-30'),
	(5, 8, 4, '54282005025', '2020-09-25', '2020-10-10'),
	(6, 8, 5, '93528591030', '2020-12-01', '2020-12-14'),
	(7, 14, 6, '93528591030', '2021-04-30', '2021-05-11'),
	(8, 14, 20, '44808974967', '2021-05-02', '2021-05-10'),
	(9, 18, 11, '12671964919', '2021-05-13', '2021-05-19'),
	(10, 19, 1, '04295519081', '2021-06-01', '2021-07-01');

DROP IF EXISTS ROTA;
```

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

># Marco de Entrega 01: Do item 1 até o item 9.1<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção

#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho

#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção

># Marco de Entrega 02: Do item 9.2 até o ítem 9.10<br>

### 10 RELATÓRIOS E GRÁFICOS

#### a) análises e resultados provenientes do banco de dados desenvolvido (usar modelo disponível)
#### b) link com exemplo de relatórios será disponiblizado pelo professor no AVA
#### OBS: Esta é uma atividade de grande relevância no contexto do trabalho. Mantenha o foco nos 5 principais relatórios/resultados visando obter o melhor resultado possível.

    

### 11	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>

#### a) Modelo (pecha kucha)<br>
#### b) Tempo de apresentação 6:40 

># Marco de Entrega 03: Itens 10 e 11<br>
<br>
<br>
<br> 



### 12 FORMATACAO NO GIT:<br> 
https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


