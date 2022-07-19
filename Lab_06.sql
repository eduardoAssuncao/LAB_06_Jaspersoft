create database locacaoImob;

create table if not exists clientes(
id int(11) not null auto_increment primary key,
nome_cliente varchar(255) not null,
cpf varchar(11),
telefone varchar(12),
email varchar(100),
dt_nascimento date);

create table if not exists locacao(
id int(11) not null auto_increment primary key,
id_imovel int(11),
id_inquilino int(11),
ativo tinyint,
data_fim date,
data_inicio date,
dia_vencimento int,
perc_multa decimal,
valor_aluguel decimal,
obs text,
foreign key (id_inquilino) references clientes (id),
foreign key (id_imovel) references imoveis (id));

create table if not exists imoveis(
id int(11) not null auto_increment primary key,
tipo_imovel varchar(50),
endereco varchar(255),
cep varchar(10),
dormitorios int,
banheiros int,
suites int,
metragem int,
valor_aluguel_sug decimal,
obs text);

create table if not exists alugueis(
id int(11) not null auto_increment primary key,
id_locacao int(11),
dt_vencimento date,
valor_pago decimal,
obs text,
foreign key (id_locacao) references locacao (id));

INSERT INTO clientes (nome_cliente, cpf, telefone, email, dt_nascimento)
VALUES
  ("Neville Carlson","3.25574132","052-463-5255","sollicitudin@protonmail.couk","2004-09-06"),
  ("Joseph Beck","1.56672539","005-060-6218","ultrices.vivamus.rhoncus@aol.ca","2002-05-13"),
  ("Rafael Stanton","1.06430483","088-559-3319","duis.gravida@icloud.net","2006-03-24"),
  ("Macaulay Norris","1.36276641","068-829-8481","duis.sit@hotmail.edu","2003-08-01"),
  ("Gillian Jordan","1.59483056","012-146-0182","vel.venenatis@hotmail.com","1999-12-9");
  
  INSERT INTO clientes (nome_cliente, cpf, telefone, email, dt_nascimento)
VALUES
  ("Uta Mcdaniel","1.56646646","027-782-1234","tincidunt.pede@protonmail.couk","2001-03-27"),
  ("Jonas Barrett","2.07795584","050-822-7523","luctus.sit@hotmail.com","2004-02-11"),
  ("Ferris Hampton","2.15608032","006-918-4654","ultrices@hotmail.ca","2000-10-05"),
  ("Allegra Nielsen","0.71194406","080-163-1974","sed.sapien@protonmail.ca","2005-06-10"),
  ("Paula French","3.85001531","061-989-8284","condimentum.donec@outlook.com","2001-11-11");
  
  INSERT INTO clientes (nome_cliente, cpf, telefone, email, dt_nascimento)
VALUES
  ("Micah Perez","1.13469572","065-677-3645","senectus.et.netus@icloud.couk","2002-05-30"),
  ("Glenna Barr","3.10362591","056-153-6236","purus.ac@outlook.net","2002-09-27"),
  ("Lisandra Edwards","2.89900735","008-135-4314","malesuada@protonmail.couk","2002-11-06"),
  ("Roth Padilla","2.78152370","003-236-1351","lorem@outlook.edu","2000-10-31"),
  ("Zeus Mccarthy","1.82720153","056-364-1143","etiam.bibendum@hotmail.ca","2002-04-10");
  
  select * from clientes;
  
  INSERT INTO imoveis (`tipo_imovel`,`endereco`,`cep`,`dormitorios`,`banheiros`,`suites`,`metragem`,`valor_aluguel_sug`,`obs`)
VALUES
  ("Sed","Ap #660-1045 At Avenue","5592","7","2","3","13","498.22","Morbi"),
  ("mus.","7070 Egestas Ave","622280","10","3","4","5","287.88","lectus convallis est,"),
  ("Phasellus","Ap #890-951 Ipsum Rd.","8221","6","10","14","5","258.19","elit. Nulla facilisi."),
  ("tortor.","961-3477 Duis Ave","828897","10","12","8","-2","522.92","sed orci lobortis"),
  ("luctus","116-4146 Tristique St.","40602","7","3","5","15","380.96","augue, eu");
  
  INSERT INTO imoveis (`tipo_imovel`,`endereco`,`cep`,`dormitorios`,`banheiros`,`suites`,`metragem`,`valor_aluguel_sug`,`obs`)
VALUES
  ("enim.","P.O. Box 671, 7143 Fermentum Rd.","564681","9","5","14","11","721.46","sagittis semper. Nam tempor"),
  ("arcu.","648-3151 Ac, Rd.","5557","6","9","10","-5","639.44","dignissim pharetra."),
  ("nec","Ap #317-2877 Natoque St.","26822","11","8","7","2","196.50","pharetra nibh. Aliquam"),
  ("laoreet,","Ap #846-8845 Quisque Avenue","32-805","2","13","6","7","417.16","mi pede, nonummy"),
  ("vulputate","275-7874 Non Road","76682","6","-1","-3","9","804.57","montes,");
  
  INSERT INTO imoveis (`tipo_imovel`,`endereco`,`cep`,`dormitorios`,`banheiros`,`suites`,`metragem`,`valor_aluguel_sug`,`obs`)
VALUES
  ("at","6603 Vulputate Av.","33525","7","8","6","-0","425.42","Ut nec urna"),
  ("non","Ap #935-3201 Magna Street","2548","8","5","7","5","247.37","natoque"),
  ("est,","P.O. Box 817, 5875 Diam. Rd.","3287","2","10","7","0","233.09","urna justo"),
  ("ac","322-8072 Aliquam Ave","T1C 4B8","5","11","18","11","758.76","nascetur ridiculus mus."),
  ("ipsum.","P.O. Box 289, 9128 Odio St.","61572-582","11","10","5","14","436.01","convallis est,");
  
  select * from imoveis;
  
  INSERT INTO locacao (`id_imovel`,`id_inquilino`,`ativo`,`data_fim`,`data_inicio`,`dia_vencimento`,`perc_multa`,`valor_aluguel`,`obs`)
VALUES
  (1,1,"0","2022-09-22","2021-05-23",1,"151.28","425.42","Ut nec urna"),
  (2,2,"1","2022-02-07","2021-06-16",6,"145.60","247.37","natoque"),
  (3,3,"2","2023-07-01","2020-02-03",11,"376.18","233.09","urna justo"),
  (4,4,"1","2022-05-01","2021-02-14",16,"389.09","758.76","nascetur ridiculus mus."),
  (5,5,"1","2022-10-21","2019-10-15",21,"316.76","436.01","convallis est,");
  
  INSERT INTO locacao (`id_imovel`,`id_inquilino`,`ativo`,`data_fim`,`data_inicio`,`dia_vencimento`,`perc_multa`,`valor_aluguel`,`obs`)
VALUES
  (1,1,"1","2021-08-12","2021-05-23",1,"247.15","597.85","mus. Aenean eget"),
  (2,2,"1","2022-04-27","2021-06-16",6,"218.74","352.54","eu eros. Nam consequat"),
  (3,3,"2","2021-07-08","2020-02-03",11,"156.50","515.21","egestas, urna justo"),
  (4,4,"1","2023-06-11","2021-02-14",16,"179.33","519.65","mattis velit justo"),
  (5,5,"1","2022-02-19","2019-10-15",21,"380.75","472.38","imperdiet nec,");
  
  INSERT INTO locacao (`id_imovel`,`id_inquilino`,`ativo`,`data_fim`,`data_inicio`,`dia_vencimento`,`perc_multa`,`valor_aluguel`,`obs`)
VALUES
  (1,3,"2","2020-08-16","2020-03-22",1,"257.15","527.85","msddffs. Aedfdfsfnean egsdffet"),
  (1,2,"1","2021-05-22","2021-02-19",6,"288.74","372.54","edfsdu erdsdfos. Nasdffm cosdffnsequat"),
  (3,4,"2","2019-06-04","2021-07-07",11,"136.50","585.21","egefdsfstas, usdfrna jussdfto"),
  (3,4,"1","2022-02-21","2020-08-19",16,"199.33","579.65","mattsdfis velsdfit jussdfsto"),
  (5,5,"2","2021-03-13","2019-12-11",21,"310.75","412.38","impefsfrdiet nsfsec,");
  
  select * from locacao;
  
  INSERT INTO alugueis (`id_locacao`,`dt_vencimento`,`valor_pago`,`obs`)
VALUES
  (1,"2023-08-03","758.47","mus. Aenean eget"),
  (2,"2023-10-01","768.95","eu eros. Nam consequat"),
  (3,"2023-08-01","285.53","egestas, urna justo"),
  (4,"2023-12-23","485.98","mattis velit justo"),
  (5,"2024-05-22","766.56","imperdiet nec,");
  
  INSERT INTO alugueis (`id_locacao`,`dt_vencimento`,`valor_pago`,`obs`)
VALUES
  (16,"2023-02-23","800.47","mas. Asnsn js"),
  (17,"2023-10-11","700.95","eu eros. Nam consequat"),
  (18,"2023-04-02","240.53","egestas, urna justo"),
  (19,"2023-11-13","530.98","mattis velit justo"),
  (20,"2024-07-24","770.56","imperdiet nec,");
  
  INSERT INTO alugueis (`id_locacao`,`dt_vencimento`,`valor_pago`,`obs`)
VALUES
  (1,"2023-10-19","157.68","risus quis diam"),
  (2,"2023-12-03","453.92","venenatis a,"),
  (3,"2023-07-12","608.22","et, eros. Proin"),
  (4,"2024-06-29","847.61","est, mollis non,"),
  (5,"2023-11-07","289.33","sodales nisi magna");
  
  INSERT INTO alugueis (`id_locacao`,`dt_vencimento`,`valor_pago`,`obs`)
VALUES
  (1,"2023-09-28","576.29","vel est"),
  (2,"2023-09-25","754.07","ipsum non arcu. Vivamus"),
  (3,"2024-06-13","402.49","Aliquam nisl."),
  (4,"2023-11-24","412.25","in felis."),
  (5,"2024-06-19","539.95","erat neque");
  
  select * from alugueis;
  
  SELECT locacaoimob.clientes.cpf,
	locacaoimob.clientes.nome_cliente,
	locacaoimob.alugueis.valor_pago,
	locacaoimob.locacao.dia_vencimento
FROM locacaoimob.alugueis
	INNER JOIN locacaoimob.locacao ON 
	 locacaoimob.alugueis.id_locacao = locacaoimob.locacao.id 
	INNER JOIN locacaoimob.clientes ON 
	 locacaoimob.locacao.id_inquilino = locacaoimob.clientes.id 
GROUP BY locacaoimob.alugueis.id;

SELECT locacaoimob.alugueis.valor_pago,
	locacaoimob.alugueis.id_locacao,
	locacaoimob.locacao.id,
	locacaoimob.imoveis.id,
	count(locacaoimob.locacao.id_imovel),
	locacaoimob.imoveis.tipo_imovel
FROM locacaoimob.alugueis
	INNER JOIN locacaoimob.locacao ON 
	 locacaoimob.alugueis.id_locacao = locacaoimob.locacao.id 
	INNER JOIN locacaoimob.imoveis ON 
	 locacaoimob.locacao.id_imovel = locacaoimob.imoveis.id 
GROUP BY locacaoimob.alugueis.id_locacao
ORDER BY locacaoimob.imoveis.tipo_imovel DESC,
	locacaoimob.locacao.id_imovel DESC;