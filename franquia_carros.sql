-- Criação do banco de dados
CREATE DATABASE franquia_carros;

-- Seleção do banco de dados
USE franquia_carros;

-- Criação da tabela loja
CREATE TABLE loja (
  id  INT NOT NULL IDENTITY(1,1) PRIMARY KEY ,
  nome VARCHAR(50),
  endereco VARCHAR(100),
  estado VARCHAR(100)
 );

-- Criação da tabela fornecedores
CREATE TABLE fornecedores (
  id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  nome VARCHAR(50),
  endereco VARCHAR(100),
  estado VARCHAR(100)
);

-- Criação da tabela carros
CREATE TABLE carros (
  id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  id_loja INT,
  id_fornecedor INT,
  modelo VARCHAR(50),
  ano INT,
  preco DECIMAL(10,0),
  FOREIGN KEY (id_loja) REFERENCES loja(id),
  FOREIGN KEY (id_fornecedor) REFERENCES fornecedores(id)
);


-- Criação da tabela clientes
CREATE TABLE clientes (
  id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  nome VARCHAR(50),
  endereco VARCHAR(100),
  estado varchar(100)
);

-- Criação da tabela funcionários
CREATE TABLE funcionarios (
  id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  id_loja INT,
  nome VARCHAR(50),
  cargo VARCHAR(50)
  FOREIGN KEY (id_loja) REFERENCES loja(id),
);

-- Criação da tabela vendas
CREATE TABLE vendas (
  id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  id_carro INT,
  id_cliente INT,
  id_funcionario INT,
  data DATE,
  FOREIGN KEY (id_carro) REFERENCES carros(id),
  FOREIGN KEY (id_cliente) REFERENCES clientes(id),
  FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id)
);

ID, ID_carro (qual carro), ID_cliente (quem comprou), ID_funcionario (quem vendeu), data (compra)

-- Inserindo dados nas tabelas

-- Fornecedores 

Insert into fornecedores values ('Ford', 'Avenida Brasil 3333','Rio de Janeiro')
Insert into fornecedores values ('Honda', 'Rua do Invisível B','Rio de Janeiro')
Insert into fornecedores values ('Nissan', 'Rua do Invisível B','Rio de Janeiro')
Insert into fornecedores values ('Tesla', 'Rua do Visível A','Rio de Janeiro')
Insert into fornecedores values ('BMW', 'Rua do Vasconselo Y','Rio de Janeiro')
Insert into fornecedores values ('Subaru', 'Rua do Barril C','Rio de Janeiro')
Insert into fornecedores values ('Fiat', 'Rua da Igreja Maria da Graça','Rio de Janeiro')
Insert into fornecedores values ('Toyota','Rua do Joaozinho N','Rio de Janeiro')

--LOJA

Insert into loja values ('Ford Carros LTDA','Rua Dinamite 10','Rio de Janeiro')
Insert into loja values ('Honda Carros LTDA','Rua com saída 11','São Paulo')
Insert into loja values ('Nissan Carros LTDA','Avenida Brasil 5','Minas Gerais')
Insert into loja values ('Tesla Carros LTDA','Avenida Rio Branco 60','São Paulo')
Insert into loja values ('BMW Carros LTDA','Rua Barata Ribeiro 340','Rio de Janeiro')
Insert into loja values ('Subaru Carros LTDA','Rua Marquês de Sapucaí55','Rio de Janeiro')
Insert into loja values ('Fiat Carros LTDA','Rua Senador Dantas 80','Minas Gerais')
Insert into loja values ('Toyota Carros LTDA','Avenida Atlântica 100','Rio de Janeiro')

--Carros

Insert into carros values (1,1,'Ford Mustang',1964,499)
Insert into carros values (1,1,'Ford Kuga',2022,399)
Insert into carros values (1,1,'Ford Focus',2015,644)

Insert into carros values (2,2,'Honda Civic',2007,244)
Insert into carros values (2,2,'Honda Accord',1995,166)
Insert into carros values (2,2,'Honda CR-V',2011,377)

Insert into carros values (3,3,'Nissan Altima',2014,230)
Insert into carros values (3,3,'Nissan Rogue',2022,277)
Insert into carros values (3,3,'Nissan Maxima',1997,155)


Insert into carros values (4,4,'Tesla Model S',2012,830)
Insert into carros values (4,4,'Tesla Model Y',2023,558)
Insert into carros values (4,4,'Tesla Model 3',2023,466)


Insert into carros values (5,5,'Subaru Impreza',1993,500)
Insert into carros values (5,5,'Subaru Outback',1997,144)
Insert into carros values (5,5,'Subaru Forester',2010,422)


Insert into carros values (6,6,'BMW Serie 3',2015,315)
Insert into carros values (6,6,'BMW Série 5',2023,455)
Insert into carros values (6,6,'BMW X5',2023,689)


Insert into carros values (7,7,'Fiat Uno Mille',2013,100)
Insert into carros values (7,7,'Fiat Palio',2015,177)
Insert into carros values (7,7,'Fiat Toro',2023,160)


Insert into carros values (8,8,'Toyota Camry',2023,337)
Insert into carros values (8,8,'Toyota Corolla',2023,200)
Insert into carros values (8,8,'Toyota RAV4',2011,447)


--Funcionarios

Insert into funcionarios values(1,'Ana Silva','Vendedor')
Insert into funcionarios values(1,'João Santos','Vendedor')
Insert into funcionarios values(1,'Maria Oliveira','Vendedor')

Insert into funcionarios values(2,'Pedro Souza','Vendedor')
Insert into funcionarios values(2,'Beatriz Costa','Vendedor')
Insert into funcionarios values(2,'Lucas Almeida','Vendedor')

Insert into funcionarios values(3,'Isabela Pereira','Vendedor')
Insert into funcionarios values(3,'Eduardo Pereira','Vendedor')
Insert into funcionarios values(3,'Luiza martins','Vendedor')

Insert into funcionarios values(4,'Leonardo Rodrigues','Vendedor')
Insert into funcionarios values(4,'Vitoria Costa','Vendedor')
Insert into funcionarios values(4,'Júlia Lima','Vendedor')

Insert into funcionarios values(5,'Gustavo Santos','Vendedor')
Insert into funcionarios values(5,'Ana Pereira','Vendedor')
Insert into funcionarios values(5,'Felipe Carvalho','Vendedor')

Insert into funcionarios values (6,'Camila Souza','Vendedor')
Insert into funcionarios values(6,'Thiago Gomes','Vendedor')
Insert into funcionarios values(6,'Beatriz Fernandes','Vendedor')

Insert into funcionarios values(7,'Mateus Silva','Vendedor')
Insert into funcionarios values(7,'Laura Rodrigues','Vendedor')
Insert into funcionarios values(7,'Gabriel Pereira','Vendedor')

Insert into funcionarios values(8,'Sofia Almeida','Vendedor')
Insert into funcionarios values(8,'Pedro Costa','Vendedor')
Insert into funcionarios values(8,'Lucas Oliveira','Vendedor')

--CLIENTES

Insert into clientes values('Thiago Oliveira ','Avenida do Santos 40','Rio de Janeiro')
Insert into clientes values('Felipe Pereira','Rua do sem ninguem 10','Rio de Janeiro')
Insert into clientes values('Ana Rodrigues','São Alfredo Jardim 100','Rio de Janeiro')

Insert into clientes values('Gustavo Almeida','Rua sem saida 20','São Paulo')
Insert into clientes values('Júlia Carvalho','Vaz Lobo Jr 70','Minas Gerais')

Insert into clientes values('Rafael Silva','Rua Padre Chagas 9','Sâo Paulo')
Insert into clientes values('Vitoria Gomes','Avenida Faria Lima 180','Minas Gerais')
Insert into clientes values('Leonardo Pereira','Rua 25 de Março 160','Minas Gerais')
Insert into clientes values('Luiza Souza','Avenida Rio Branco 260','Rio de Janeiro')

Insert into clientes values('Eduardo Costa','Rua Augusta 200','Sâo Paulo')
Insert into clientes values('Maria Ferreira','Avenida Paulista 110','Sâo Paulo')
Insert into clientes values('Beatriz Castro','Rua Santa Catarina 70','Rio de Janeiro')

Insert into clientes values('Mateus Lima','Avenida Nove de Julho 50','Rio de Janeiro')

Insert into clientes values('Laura Mendes','Rua 7 de Setembro 90','Minas Gerais')
Insert into clientes values('Gabriel Santos','Rua Padre Chagas 10','Rio de Janeiro')
Insert into clientes values('Sofia Barbosa','Avenida Rebouças 230','Sâo Paulo')

Insert into clientes values('Pedro Ribeiro','Rua do Comércio 100','Rio de Janeiro')
Insert into clientes values('Isabela Martins','Avenida Brasil 5550','Rio de Janeiro')
Insert into clientes values('Lucas Fernandes','Avenida Atlântica 20','Sâo Paulo')

Insert into clientes values('Camila Vasques','Avenida das Colinas 100','Minas Gerais')

--VENDAS

Insert into vendas values (1,2,1,'01-01-2023')
Insert into vendas values (4,4,12,'05-05-2023')
Insert into vendas values (7,3,9,'03-04-2023')

Insert into vendas values (2,1,3,'03-01-2023')
Insert into vendas values (3,5,2,'10-01-2023')

Insert into vendas values (6,7,11,'2023-06-15')
Insert into vendas values (8,6,7,'2023-02-11')
Insert into vendas values (9,8,8,'2023-06-01')
Insert into vendas values (13,10,14,'2023-05-01')

Insert into vendas values (11,9,12,'2023-04-01')
Insert into vendas values (10,12,10,'2023-05-03')
Insert into vendas values (24,13,22,'2023-06-06')

Insert into vendas values (20,11,19,'2023-06-02')

Insert into vendas values (23,16,24,'2023-06-09')
Insert into vendas values (19,14,20,'2023-01-09')
Insert into vendas values (17,15,15,'2023-01-10')

Insert into vendas values (18,19,16,'2023-03-22')
Insert into vendas values (15,20,13,'2023-04-21')
Insert into vendas values (12,18,10,'2023-05-25')

Insert into vendas values (22,17,23,'2023-06-14')

-- Relatório de vendas por automóvel

select c.modelo, COUNT(v.id) as vendas
from vendas v
inner join carros c
on v.id_carro = c.id
group by c.modelo

-- Relatório de vendas por vendedor

select f.nome, COUNT(v.id) [total de vendas], SUM(c.preco) [total de dinheiro]
from vendas v
inner join funcionarios f
on v.id_funcionario = f.id
inner join carros c
on c.id = v.id_carro
group by f.nome

--Relatório de vendas por vendedor x loja

select l.nome [empresas], f.nome[nome do funcionario], COUNT(v.id) [total de vendas]
from vendas v
inner join funcionarios f
on v.id_funcionario = f.id
inner join loja l on f.id_loja = l.id
group by l.nome, f.nome


-- Relatório de vendas por estado

select c.estado, COUNT(v.id) [total de vendas] 
from vendas v
inner join clientes c on v.id_cliente = c.id
group by c.estado



-- Criação de VIEW

CREATE VIEW vw_vendasporautomovel AS
select c.modelo, COUNT(v.id) as vendas
from vendas v
inner join carros c
on v.id_carro = c.id
group by c.modelo


CREATE VIEW vw_vendasporvendedor AS
select f.nome, COUNT(v.id) [total de vendas], SUM(c.preco) [total de dinheiro]
from vendas v
inner join funcionarios f
on v.id_funcionario = f.id
inner join carros c
on c.id = v.id_carro
group by f.nome


CREATE VIEW vw_vendasporvendedorversosloja AS
select l.nome [empresas], f.nome[nome do funcionario], COUNT(v.id) [total de vendas]
from vendas v
inner join funcionarios f
on v.id_funcionario = f.id
inner join loja l on f.id_loja = l.id
group by l.nome, f.nome


CREATE VIEW vw_vendasporestado AS
select c.estado, COUNT(v.id) [total de vendas] 
from vendas v
inner join clientes c on v.id_cliente = c.id
group by c.estado
