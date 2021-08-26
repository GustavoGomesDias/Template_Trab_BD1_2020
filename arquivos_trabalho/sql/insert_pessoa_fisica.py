def insert_table_pessoaf():
  try:
    elephante_cursor.execute("""
      INSERT INTO PESSOA VALUES 
        (107, 'Alex Araujo Melo', '4729219981', 'SC', 'Blumenau', 'Bairro do Alecrim', 'Rua Vendelino Krauss', 901),
        (108, 'Cauã Rodrigues Oliveira', '6662939538', 'MT', 'Rondonópolis', 'Bairro das Amoras', 'Avenida Duque de Caxias', 1112),
        (109, 'Rafaela Rodrigues Ferreira', '1931798815', 'SP', 'Americana', 'Bairro da Salvação', 'Rua Wilton Rosa', 585),
        (110, 'Guilherme Rocha Lima', '4937362083', 'SC', 'Chapecó', 'Bairro das Lamurias', 'Rua José Bonifácio', 1573),
        (111, 'Renan Fernandes Correia', '1127894010', 'SP', 'São Paulo', 'Bairro Teresinha', 'Rua São Jorge', 852),
        (112, 'Raissa Cunha Ferreira', '2848568861', 'ES', 'Cachoeiro de Itapemirim', 'Bairro Salvador', 'Rua Euclides da Cunha', 1512),
        (113, 'Fábio Cavalcanti Cardoso', '1432622794', 'SP', 'Tupã', 'Bairro Lagoinha', 'Rua Caetano Violante', 1366),
        (114, 'Sofia Souza Almeida', '5157225293', 'RS', 'Porto Alegre', 'Bairro Virtude', 'Rua Marupá', 1001),
        (115, 'Vinícius Pinto Costa', '2192149355', 'RJ', 'Nilópolis', 'Bairro Zico', 'Travessa São Jerônimo', 1310),
        (116, 'Sophia Pereira Gomes', '1135929015', 'SP', 'Jundiaí', 'Bairro Carol Gonçalves', 'Rua Isaac Ferreira', 1015),
        (117, 'Guilherme Barbosa Cunha', '1151392847', 'SP', 'São Paulo', 'Bairro Ancorados', 'Travessa Dom Carlos de Verdi', 677),
        (118, 'Matilde Gomes Barbosa', '9121825787', 'PA', 'Belém', 'Bairro Gil Nogueira', 'Vila Manteiga', 1408),
        (119, 'Antônio Carvalho Santos', '8546835513', 'CE', 'Fortaleza', 'Bairro Pernambucano', 'Vila Cícero Lopes', 28),
        (120, 'Daniel Araujo Alves', '1837122996', 'SP', 'Presidente Prudente', 'Bairro Dois de Março', 'Rua Michio Kawagushi', 1747),
        (121, 'Matilde Costa Fernandes', '1942982441', 'SP', 'Campinas', 'Bairro Gira-Gira', 'Rua Abrão Baracat', 1451)
    """)
  except (Exception, psycopg2.DatabaseError) as error:
    print(error)
    conn.rollback()
  else:
    conn.commit()

insert_table_pessoaf()

def insert_cpf():
  try:
    elephante_cursor.execute("""
      INSERT INTO PESSOA_FISICA VALUES
        (107, '80964307006'),
        (108, '31750924382'),
        (109, '20419505792'),
        (110, '70035549092'),
        (111, '35825366296'),
        (112, '26891831539'),
        (113, '12368763260'),
        (114, '90789429080'),
        (115, '88203436900'),
        (116, '89616067192'),
        (117, '31691899801'),
        (118, '15897339082'),
        (119, '77861491633'),
        (120, '31621449149'),
        (121, '90997027959')
    """)
  except (Exception, psycopg2.DatabaseError) as error:
    print(error)
    conn.rollback()
  else:
    conn.commit()
insert_cpf()
