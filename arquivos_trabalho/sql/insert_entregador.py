def insert_table_pessoae():
  try:
    elephante_cursor.execute("""
      INSERT INTO PESSOA VALUES 
        (133, 'Luan Emanuel Felipe Aragão', '92993529923', 'AM', 'Parintins', 'Vitória Régia', 'Rua Armínio Prestes', 928),
        (134, 'Agatha Vera Porto', '71981307697', 'BA', 'Salvador', 'Liberdade', 'Ladeira São Domingos', 842),
        (135, 'Hadassa Raquel Stefany Brito', '67983207014', 'MS', 'Campo Grande', 'Chácara dos Poderes', 'Estrada EW 4', 223),
        (136, 'Theo Antonio Martin da Rosa', '27982558565', 'ES', 'Vitória', 'Bela Vista', 'Travessa João Soares', 919),
        (137, 'Marcelo Gael Gomes', '63988556913', 'TO', 'Gurupi', 'Loteamento Parque Residencial Atalaia', 'Rua Avelino', 873),
        (138, 'Rafael Luiz Levi Silva', '91987755418', 'PA', 'Belém', 'Campina', 'Travessa Frei Gil de Vila Nova', 507),
        (139, 'Severino Levi Theo Jesus', '96982527037', 'AP', 'Macapá', 'Muca', 'Avenida G', 480),
        (140, 'Luna Alícia Nunes', '79997846058', 'SE', 'Aracaju', 'Santa Maria', 'Rua A9', 464),
        (141, 'Regina Elza Figueiredo', '67989536775', 'MS', 'Campo Grande', 'Jardim Monte Líbano', 'Rua Lucélia', 141),
        (142, 'Breno Leandro Viana', '67996977913', 'MS', 'Ponta Porã', 'Parque Residencial Monte Carlo', 'Rua São Sebastião', 900),
        (143, 'Jennifer Luzia Daiane Lopes', '35982312248', 'MG', 'Passos', 'COHAB', 'Rua Sebastião Alves de Oliveira - Pé Quente', 119),
        (144, 'Raimunda Maitê Manuela Almeida', '95993635458', 'RR', 'Boa Vista', 'São Bento', 'Rua Ecildon de Souza Pinto', 735),
        (145, 'Jorge Márcio Corte Real', '21993899790', 'RJ', 'São Gonçalo', 'Mutondo', 'Rua Joaquim Lage', 178),
        (146, 'Filipe Rafael Kauê da Luz', '84981352951', 'RN', 'Parnamirim', 'Emaús', 'Rua da Pacificação', 172)
    """)
  except (Exception, psycopg2.DatabaseError) as error:
    print(error)
    conn.rollback()
  else:
    conn.commit()

insert_table_pessoae()

def insert_cnh():
  try:
    elephante_cursor.execute("""
      INSERT INTO ENTREGADOR VALUES
        (133, '84895466004'),
        (134, '53285468851'),
        (135, '44208216683'),
        (136, '35390539792'),
        (137, '85941111266'),
        (138, '61110171690'),
        (139, '63270247699'),
        (140, '81822048542'),
        (141, '03631869251'),
        (142, '69911991451'),
        (143, '22981323310'),
        (144, '24155009530'),
        (145, '14004132783'),
        (146, '36535117094')
    """)
  except (Exception, psycopg2.DatabaseError) as error:
    print(error)
    conn.rollback()
  else:
    conn.commit()
insert_cnh()