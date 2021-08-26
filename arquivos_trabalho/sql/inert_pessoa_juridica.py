def insert_table_pessoaj():
  try:
    elephante_cursor.execute("""
      INSERT INTO PESSOA VALUES 
        (122, 'Chama Na Pizza Pizzaria Ltda', '19999668958', 'SP', 'Rio Claro', 'Cidade Jardim', 'Rua 8 CJ', 457),
        (123, 'Casa dos Doces ME', '82992547080', 'AL', 'Maceió', 'Bairro Benedito Bentes', 'Rua E-1', 800),
        (124, 'Ferramentas divinas', '82995030335', 'AL', 'Maceió', 'Bairro Petrópolis', 'Rua Perimetral 3', 648),
        (125, 'Leroy Construções', '', 'PR', 'Bairro Guarapuava', 'Alto Cascavel', 'Rua Paranavaí', 717),
        (126, 'ImporTênis', '21985413340', 'RJ', 'Teresópolis', 'Bairro Alto', 'Avenida Alberto Torres', 528),
        (127, 'Situacional Drogarias', '86998559431', 'PI', 'Teresina', 'Lourival Parente', 'Rua Nilo Peçanha', 726),
        (128, 'LuuMag Informática ME', '86994284389', 'PI', 'Teresina', 'Ininga', 'Rua João Crisóstomo e Silva', 572),
        (129, 'José e Fabiana Alimentos ME', '61995302219', 'DF', 'Brasília', 'Asa Sul', 'Quadra SQS 307 Bloco D', 333),
        (130, 'Artigos no Ponto Artigos Gerais ME', '75989238213', 'BA', 'Alagoinhas', 'Jardim Petrolar', 'Rua Santo Cristo', 368),
        (131, 'PetConfiança ME', '84987536184', 'RN', 'Mossoró', 'Dom Jaime Câmara', 'Rua Antônio Sabino', 293),
        (132, 'Na Fria Congelados ME', '63994595067', 'TO', 'Gurupi', 'Setor Novo Horizonte', 'Rua N-011',168 )
    """)
  except (Exception, psycopg2.DatabaseError) as error:
    print(error)
    conn.rollback()
  else:
    conn.commit()

insert_table_pessoaj()

def insert_cnpj():
  try:
    elephante_cursor.execute("""
      INSERT INTO PESSOA_JURIDICA VALUES
        (122, '28524532000147'),
        (123, '84554330000119'),
        (124, '52652943000100'),
        (125, '40983202000115'),
        (126, '29788270000190'),
        (127, '17019710000166'),
        (128, '96101042000198'),
        (129, '08469067000181'),
        (130, '98180848000144'),
        (131, '89196575000135'),
        (132, '45424619000161')
    """)
  except (Exception, psycopg2.DatabaseError) as error:
    print(error)
    conn.rollback()
  else:
    conn.commit()
insert_cnpj()