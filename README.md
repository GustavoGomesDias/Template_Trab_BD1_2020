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

> A empresa YourDelivery, que trabalha com entrega de encomendas, tem como meta neste projeto conseguir analizar a atual situação dela no mercado, pois com a chegada do novo Corona vírus e o lockdown imposto para suprimir seus avanços, a empresa teve um "boom" de contratações que superou e muito analizes anteriomente feitas. Por isso, o sistema desenvolvido neste projeto chegou com a missão de garantir uma analize das entregas feitas por todo o país e para que isso seja possível, a empresa necessitará das informações relativas as entregas em si, tanto dos clientes que enviam, como dos clientes que recebem e, por fim, necessitará também das informações referentes aos entregadores que trabalham para ela.
 

### 3.MINI-MUNDO<br>

Descrever o mini-mundo! (Não deve ser maior do que 30 linhas, se necessário resumir para justar) <br>
Entrevista com o usuário e identificação dos requisitos.(quando for o caso de sistemas com cliente  real)<br>
Descrição textual das regras de negócio definidas como um  subconjunto do mundo real 
cujos elementos são propriedades que desejamos incluir, processar, armazenar, 
gerenciar, atualizar, e que descrevem a proposta/solução a ser desenvolvida.

> Detalhando as informações necessárias para o que se desenvolva o projeto, a empresa YourDelivery necessita que sejam coletados o peso, quantidade, altura, largura, profundidade, o tipo da entrega (que no nosso caso srão datados como eletrônicos, cargas secas, cargas a granel - líquido ou sólido - e cargas frigoríficas - perecíveis ou congelados), data em que a entrega foi enviada e data em que a entrega foi recebida pelo destinatário. Dos clientes, serão armazenados CPF ou CNPJ (pois a empresa tabalha tanto com pessoas físicas, quanto com pessoas jurídicas), nome, telefone e endereço completo (estado pela sua UF, cidade, bairro, rua e número de residência). Para os entregadores serão armazenados as mesmas informações que para clientes, mas não será armazenado o CPF e sim a sua CNH.
> Sobre suas relações, temos que cada entrega sempre terá um e cliente remetente e um cliente destinatário, sendo que qualquer um dos dois pode ser um pessoa física ou juridica, além de ter um único entregador responsável pela carga. Agora, cada cliente pode enviar ou receber várias entregas e, por isso, pode ter várias entregas ligadas a ele mesmo. O mesmo acontece com os entregadores, que podem ser responsáveis por várias entregas.

### 4.PROTOTIPAÇÃO, PERGUNTAS A SEREM RESPONDIDAS E TABELA DE DADOS<br>
#### 4.1 RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

<img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/prototipo/Login.png" height="400px">
<img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/prototipo/Register.png" height="400px">
<img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/prototipo/perfil.png" height="400px">
<img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/prototipo/entregas.png" height="400px">
<img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/prototipo/chat.png" height="400px">
<img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/prototipo/Overview.png" height="400px">

[Arquivo PDF do Protótipo Balsamiq feito para Empresa YourDelivery](https://github.com/GustavoGomesDias/YourDelivery/raw/master/arquivos_trabalho/prototipo.pdf)

#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
* Relatórios dos tipos de entregas que empresa mais trabalhou. O relatório deve conter principalmente os tipos de cada carga, o perído em que o relatório foi gerado (obtido a partir da data de envio da entrega) e também a quantidade de cada entrega.
* Relatório das regiões em que a empresa esteve mais prensente, como também os estados em que a empresa mais trabalho. Para isso o relatório deve conter o estado onde a entrega foi enviada e o estado onde a entrega foi programada para ser recebida.
* Relatório dos empregados que mais concluiram entregas e o tempo de relativo de cada entrega realizada por eles. Aqui, será necessário guardar a CNH e o nome de cada empregado, número de entregas realizadas pelos mesmos e o tempo médio gasto para que cada um concluisse as entregas (pode ser obtido pelo cálculo enovolvebdo tanto a data de envio da entrega como a data em que ela foi recebida pelo remetente, o calculo seria a data em que a entrega foi recebida menos a data em que a entrega foi enviada).
* Relatório dos tipos de clientes que mais utilizaram os serviços da empresa. Esse cálculo pode ser obtido pela contagem do número de CPF e CNPJ registrado nas entregas, sendo que para complementar os dados serão necessários os nomes, CPF/CNPJ e endereço dos clientes remetentes e destinatários.
* Relatório das região com maior e menor facilidade de entrega. Para isso devemos levar em conta a média de tempo de entrega de cada região (no caso, o tempo de entrega é dado ao subtrari a data em que a entrega foi recebida pela data em que a entrega foi enviada), sendo que devemos contar as regiões usando os estados do cliente que enviou e do cliente que recebeu. Ou seja, esse tempo médio seria o tempo de navegar de uma região até outra (ex.: tempo médio de entrega ao sair do sudeste e ir até o nordeste).
 
#### 4.3 TABELA DE DADOS DO SISTEMA:
- [Link da tabela no google docs](https://docs.google.com/spreadsheets/d/1ZCAK7A39AChPlSG1pVAqZ8scKzA3JVNtziF6iV5Lalo/edit?usp=sharing)
- [Link arquivo csv](https://github.com/GustavoGomesDias/YourDelivery/blob/master/arquivos_trabalho/tabela/yourDelivery.csv) (tá neste repo e é possível ver a tabela formatada)
- [Download do arquivo xlsx](https://github.com/GustavoGomesDias/YourDelivery/blob/master/arquivos_trabalho/tabela/yourDelivery.xlsx?raw=true)
    
### 5.MODELO CONCEITUAL<br>
![Modelo Conceitual](https://github.com/GustavoGomesDias/YourDelivery/blob/master/arquivos_trabalho/modelos/conceitual.png)

- Principais entidades
  - Entrega;
  - Pessoa;
  - Entregador;
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 Descrição dos dados 
PESSOA: Tabela que armazena as informações das pessoas envolvidas com a entrega.<br>
CODIGO: Campo que refere-se a identificação de cada cliente na tabela CLIENTE.<br>
TELEFONE: Campo que guarda o número de telefone de cada um dos clientes da empresa.<br>
NOME: Campo que guarda o nome completo dos clientes.<br>
ENDERECO: Campo que guarda o endereço de cada um dos clientes.<br>

---

PESSOA_FISICA: Tabela que armazena informações específicas de clientes que são pessoas físicas.<br>
CPF: Campo que armazena o Cadastro de Pessoa Física de cada pessoa física que é cliente da empresa.<br>

---

PESSOA_JURIDICA: Tabela que armazena informações específicas de clientes que são pessoas jurídicas.<br>
CNPJ: Campo que armazena o Cadastro Nacional de Pessoa Jurídica de cada pessoa jurídica que é cliente da empresa.<br>

---

ENTREGADOR: Tabela que guarda as informações de todos os entregadores que trabalham na empresa.<br>
CNH: Campo que armazena a Carteira Nacional de Habilitação.<br>


---

ENTREGA: Tabela que guarda informações referentes as entregas feitas pela empresa.<br>
CODIGO: Campo que refere-se a identificação da entrega dentro da tabela ENTREGA.<br>
TiPO_ENTREGA: Campo que guarda de que tipo é a encomenda (exp.: Eletrônico, Granel Líquido).<br>
PESO_ENTREGA: Campo que guarda o peso (em quilograma - km) da entrega.<br>
QTD_ENTREGA: Campo que guarda a quantidade de itens pertecente a entrega.<br>
ALT_ENTREGA: Campo que guarda a altura da entrega (contando a embalagem e medido em centímetros - cm).<br>
LARG_ENTREGA: Campo que guarda a largura da entrega (contando a embalagem e medido em centímetros - cm).<br>
PROFUN_ENTREGA: Campo que guarda a profundidade da entrega (contando a embalagem e medido em centímetros - cm).<br>
DATA_ENVIO: Campo que guarda a data em que o remetente enviou ou programou para que a entrega fosse enviada até seu destino.<br>
DATA_RECEBIMENTO: Campo que guarda a data em que a entrega chegou no seu destinatário.<br>

### 6	MODELO LÓGICO<br>
![Modelo Lógico](https://github.com/GustavoGomesDias/YourDelivery/blob/master/arquivos_trabalho/modelos/logico.png)

### 7	MODELO FÍSICO<br>
##### CLIENTE
```sql
CREATE TABLE pessoa(
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
	codigo integer NOT NULL,
	cnh varchar(14),
	FOREIGN KEY(codigo) REFERENCES pessoa(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);
```
##### ENTREGA
```sql
CREATE TABLE ENTREGA(
	codigo integer NOT NULL,
	cliente_envio integer NOT NULL,
	cliente_recebe integer NOT NULL,
	entregador integer NOT NULL,
	tipo_entrega varchar(30),
	peso_entrega float,
	alt_entrega float,
	larg_entrega float,
	profun_entrega float,
	qtd_entrega integer,
	data_envio date,
	data_recebimento date,
	PRIMARY KEY (codigo),
	FOREIGN KEY (cliente_envio) REFERENCES pessoa(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (cliente_recebe) REFERENCES pessoa(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (entregador) REFERENCES pessoa(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);
```
        
       
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### Drop
```sql
DROP TABLE IF EXISTS pessoa CASCADE;
DROP TABLE IF EXISTS pessoa_fisica;
DROP TABLE IF EXISTS pessoa_juridica;
DROP TABLE IF EXISTS entregador;
DROP TABLE IF EXISTS entrega;
```

#### Create
```sql
CREATE TABLE pessoa(
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
	FOREIGN KEY(codigo) REFERENCES pessoa(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE PESSOA_JURIDICA(
	codigo integer NOT NULL,
	cnpj varchar(14),
	FOREIGN KEY(codigo) REFERENCES pessoa(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ENTREGADOR(
	codigo integer NOT NULL,
	cnh varchar(14),
	FOREIGN KEY(codigo) REFERENCES pessoa(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ENTREGA(
	codigo integer NOT NULL,
	cliente_envio integer NOT NULL,
	cliente_recebe integer NOT NULL,
	entregador integer NOT NULL,
	tipo_entrega varchar(30),
	peso_entrega float,
	alt_entrega float,
	larg_entrega float,
	profun_entrega float,
	qtd_entrega integer,
	data_envio date,
	data_recebimento date,
	PRIMARY KEY (codigo),
	FOREIGN KEY (cliente_envio) REFERENCES pessoa(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (cliente_recebe) REFERENCES pessoa(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (entregador) REFERENCES pessoa(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);
```
#### Insert
```sql
INSERT INTO PESSOA
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
	(20, 'Sua Pizza Delivery ME', '18991644147', 'GO', 'Rio Verde', 'Catelandia', 'Rua Major Rocha', 1517),
	(100, 'Mateus Sousa Costa', '61998679042', 'MG', 'Betim', 'Bairro das Cruzes', 'Rua José da Conceição', 460),
	(101, 'Rafael Cardoso Correia', '11947705880', 'SP', 'São Paulo', 'Bairro da Tijuca', 'Rua Pedra Lavrada', 1065),
	(102, 'Gustavo Alves Rocha', '21942156639', 'RS', 'Porto Alegre', 'Bairro do Crescimento', 'Acesso E', 164),
	(103, 'Thaís Ribeiro Barros', '19954754928', 'PE', 'Petrolina', 'Bairro das Palmeiras', 'Rua Deputada Ana Oliveira', 1528),
	(104, 'Anna Oliveira Pinto', '19954754928', 'PR', 'Curitiba', 'Bairro da Catedral', 'Rua Astor Toniolo', 1115),
	(105, 'Livia Castro Rodrigues', '8191202990', 'MG', 'Montes Claros', 'Bairro Serra City', 'Rua C', 1703),
	(106, 'Sarah Correia Barros', '31985966293', 'SP', 'Jacareí', 'Bairro Joaninha', 'Rua Olímpio Catão', 507);
	
INSERT INTO pessoa_fisica
VALUES
	(1, '75198965014'),
	(2, '48972624020'),
	(3, '67941668289'),
	(4, '44585241787'),
	(5, '43388477000'),
	(6, '22244606007'),
	(7, '31370743041');
	
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

INSERT INTO entregador
VALUES
	(100, '03993638185'),
	(101, '37376176159'),
	(102, '56845638820'),
	(103, '64984431466'),
	(104, '82192867698'),
	(105, '07055649667'),
	(106, '17699458222');

INSERT INTO entrega
VALUES
	(1, 2, 3, 100, 'Eletrônico', 5.7,	55.9, 89.5, 8.2, 1, '2012-06-01', '2012-07-05'),
	(2, 2, 3, 100, 'Eletrônico', 0.205, 16.4, 7.58, 0.89, 1, '2013-02-01', '2013-03-06'),
	(3, 1, 5, 101, 'Granel Líquido', 10.8, 24.5, 18, 27, 2,'2018-04-01', '2018-04-12'),
	(4, 14, 6, 102, 'Carga Frágil', 2.4, 22.5, 9, 22.5, 3,'2020-03-14', '2020-03-30'),
	(5, 8, 4, 103, 'Congelados', 3, 5, 16, 5, 10,'2020-09-25', '2020-10-10'),
	(6, 8, 5, 102, 'Congelados', 3, 5, 16, 5, 30, '2020-12-01', '2020-12-14'),
	(7, 14, 6, 102, 'Carga Frágil', 1, 12.9, 13.6, 23.9, 3, '2021-04-30', '2021-05-11'),
	(8, 14, 20, 104, 'Carga Seca', 2.36, 90, 35, 44, 1, '2021-05-02', '2021-05-10'),
	(9, 18, 11, 105, 'Granel Líquido', 2, 10, 10, 10, 5, '2021-05-13', '2021-05-19'),
	(10, 19, 1, 106, 'Perecível', 0.05, 4, 9.3, 9.3, 5, '2021-06-01', '2021-07-01');
```

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
```sql
SELECT * FROM pessoa;
```
![Resultado do select em pessoa pt.1](https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/select-pessoa.png)
![Resultado do select em pessoa pt.2](https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/select-pessoa2.png)
![Resultado do select em pessoa pt.3](https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/select-pessoa3.png)

```sql
SELECT * FROM pessoa_fisica;
```
![Resultado do select em pessoa_fisica](https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/select-pessoa-fisica.png)
```sql
SELECT * FROM pessoa_juridca;
```
![Resultado do select em pessoa_juridica](https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/select-pessoa-juridica.png)
```sql
SELECT * FROM entregador;
```
![Resultado do select em entregador](https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/entregador.png)
```sql
SELECT * FROM entrega;
```
![Resultado do select em entrega](https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/entregasr.gif)

># Marco de Entrega 01: Do item 1 até o item 9.1<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

##### [Link da célula 9.2 no colab](https://colab.research.google.com/drive/14MIiTUddfrG3DQQRdfoihld2VgYLhlBi?authuser=1#scrollTo=KROzTTuHwQuM)

<img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-2/celula9-2.png">

<details>
  <summary>Clique para ver as imagens</summary>
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-2/celula9-2-so.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-2/celula9-2-no.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-2/celula9-2-co.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-2/celula9-2-su.png">
</details>

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
##### [Link para célula 9.3 (a) no colab](https://colab.research.google.com/drive/14MIiTUddfrG3DQQRdfoihld2VgYLhlBi?authuser=1#scrollTo=eQp17ONhw3Nc)

<img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-3/task9-3-a/celula9-3-a.png">

<details>
  <summary>Clique para ver as imagens</summary>
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-3/task9-3-a/celula9-3-not-sp.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-3/task9-3-a/celula9-3-fragil.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-3/task9-3-a/celula9-3-entregador.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-3/task9-3-a/celula9-3-cliente14.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-3/task9-3-a/celula9-3-ultima.png">
</details>

##### [Link para célula 9.3 (b) no colab](https://colab.research.google.com/drive/14MIiTUddfrG3DQQRdfoihld2VgYLhlBi?authuser=1#scrollTo=KmU47X3pFTEk)

<img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-3/task9-3-b/celula9-3-b.png">

<details>
  <summary>Clique para ver as imagens</summary>
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-3/task9-3-b/celula9-3-peso.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-3/task9-3-b/celula9-3-massa.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-3/task9-3-b/celula9-3-volume.png">
</details>

##### [Link para célula 9.3 (c) no colab](https://colab.research.google.com/drive/14MIiTUddfrG3DQQRdfoihld2VgYLhlBi?authuser=1#scrollTo=R_qNYD_Z5xA3)


<img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-3/task9-3-c/celula9-3-c.png">

<details>
  <summary>Clique para ver as imagens</summary>
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-3/task9-3-c/celula9-3-codigo.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-3/task9-3-c/celula9-3-infos.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-3/task9-3-c/celula9-3-end.png">
</details>

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    
##### [Link para célula 9.4 (a) no colab](https://colab.research.google.com/drive/14MIiTUddfrG3DQQRdfoihld2VgYLhlBi?authuser=1#scrollTo=R_qNYD_Z5xA3)

<img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-4/task9-4-a/task9-4-a.png">

<details>
  <summary>Clique para ver as imagens</summary>
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-4/task9-4-a/taskPessoas-com-castro.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-4/task9-4-a/taskPessoas-com-cpf.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-4/task9-4-a/taskPessoas-com-ddd.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-4/task9-4-a/taskPessoas-com-me.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-4/task9-4-a/taskPessoas-com-praca.png">
</details>

##### [Link para célula 9.4 (b) no colab](https://colab.research.google.com/drive/14MIiTUddfrG3DQQRdfoihld2VgYLhlBi?authuser=1#scrollTo=FM4vs-c9mU9C)

<img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-4/task9-4-b/task9-4-b.png">

<details>
  <summary>Clique para ver as imagens</summary>
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-4/task9-4-b/task9-4-2020.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-4/task9-4-b/task9-4-entrega.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-4/task9-4-a/taskPessoas-com-ddd.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-4/task9-4-a/taskPessoas-com-me.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-4/task9-4-b/task9-4-not-2020.png">
</details>

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

##### [Link para célula 9.5 (a) no colab](https://colab.research.google.com/drive/14MIiTUddfrG3DQQRdfoihld2VgYLhlBi?authuser=1#scrollTo=sM_pG5RGpth0)

<img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-5/task9-5-a/task9-5-a.png">

<details>
  <summary>Clique para ver as imagens</summary>
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-5/task9-5-a/task9-5-entrega1.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-5/task9-5-a/task9-5-pessoa.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-5/task9-5-a/task9-5-pessoa-table.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-5/task9-5-a/task9-5-rua-code.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-5/task9-5-a/task9-5-rua-table.png">
</details>

##### [Link para célula 9.5 (b) no colab](https://colab.research.google.com/drive/14MIiTUddfrG3DQQRdfoihld2VgYLhlBi?authuser=1#scrollTo=rBsWhljtJtPP)

<img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-5/task9-5-b/task9-5-b.png">

<details>
  <summary>Clique para ver as imagens</summary>
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-5/task9-5-b/task9-5-empresa.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-5/task9-5-b/task9-5-empresa-code.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-5/task9-5-b/task9-5-num.png">
  <img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-5/task9-5-b/task9-5-peso.png">
</details>

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>

##### [Link para célula 9.6 (a) no colab](https://colab.research.google.com/drive/14MIiTUddfrG3DQQRdfoihld2VgYLhlBi?authuser=1#scrollTo=GQOKnTr1jOim)

<img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-6/taks9-6-a/task9-6-a.png">
<img src="https://github.com/GustavoGomesDias/YourDelivery/blob/master/images/colab/task9-6/taks9-6-a/task9-6-a-table.png"

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


