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
