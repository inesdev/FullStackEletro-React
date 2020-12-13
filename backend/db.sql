create database bancofullstack;

create table produtos (
    id int not null primary key AUTO_INCREMENT,
    descricao varchar(200),
    preco_antigo decimal(8,2),
    preco_atual decimal(8,2),
    img varchar(120),
    fk_idcategorias int, 
    nome_categoria varchar(50),
    id_categoria int, 
    primary key (id)
);

insert into produtos(categoria, descricao, preco_antigo, preco_atual, img) 
    value(
        "panelas", 
        "Panela Eletrica de Arroz Mondial", 
        189.90,
        119.90, 
        ".\imagens\panelaep.jpg");

insert into produtos(categoria, descricao, preco_antigo, preco_atual, img) 
    value(
        "panelas", 
        "Panela Eletrica de Arroz Mondial PE-10 700W", 
        199.90,
        149.99, 
        ".\imagens\panelaeb.jpg");

insert into produtos(categoria, descricao, preco_antigo, preco_atual, img) 
    value(
        "liquidificadores", 
        "Liquidificador Mondial com Filtro Turbo L900FB com 5 Velocidades", 
        179.90,
        104.90, 
        ".\imagens\liquip.jpg");

insert into produtos(categoria, descricao, preco_antigo, preco_atual, img) 
    value(
        "liquidificadores", 
        "Liquidificador Mondial Turbo L-1000 RI com 12 Velocidades", 
        159.90,
        105.90, 
        ".\imagens\liquiv.jpg");

insert into produtos(categoria, descricao, preco_antigo, preco_atual, img) 
    value(
        "sanduicheiras", 
        "Sanduicheira e Grill Britania Crome 2P", 
        129.90,
        79.90, 
        ".\imagens\sandp.jpg");

insert into produtos(categoria, descricao, preco_antigo, preco_atual, img) 
    value(
        "sanduicheiras", 
        "Sanduicheira Britania Bello Pane",
        129.90, 
        79.90, 
        ".\imagens\sandb.jpg");

insert into produtos(categoria, descricao, preco_antigo, preco_atual, img) 
    value(
        "ventiladores", 
        "Ventilador de Mesa Mondial - 3 Velocidades", 
        209.90,
        169.00, 
        ".\imagens\ventp.jpg");

insert into produtos(categoria, descricao, preco_antigo, preco_atual, img) 
    value(
        "ventiladores", 
        "Ventilador de Coluna Malory - 3 Velocidades", 
        249.90,
        179.90, 
        ".\imagens\ventp1.jpg");

insert into produtos(categoria, descricao, preco_antigo, preco_atual, img) 
    value(
        "aspiradores", 
        "Aspirador de Po Britania Faciclean", 
        229.90,
        167.00, 
        ".\imagens\aspiradorp.jpg");

insert into produtos(categoria, descricao, preco_antigo, preco_atual, img) 
    value(
        "aspiradores", 
        "Aspirador de Po Vertical Philco", 
        239.90,
        179.90, 
        ".\imagens\aspiradorp.jpg");

insert into produtos(categoria, descricao, preco_antigo, preco_atual, img) 
    value(
        "centrifugas", 
        "Centrifuga de Roupas Britania 12Kg", 
        499.00,
        399.00, 
        ".\imagens\centrifugab.jpg");

insert into produtos(categoria, descricao, preco_antigo, preco_atual, img) 
    value(
        "centrifugas", 
        "Centrifuga de Roupas Mueller Super 5 kg", 
        449.00,
        349.00, 
        ".\imagens\centrifugap.jpg");

create table comentarios(
  nome varchar(80) NOT NULL,
  msg varchar(300) NOT NULL,
  PRIMARY KEY (nome)
);

INSERT INTO comentarios(nome, msg)
	VALUES ('Maria', 'Ótimos produtos'),	
    	   ('Vivian', 'Entrega rápida'),
           ('João', 'Recomendo');
           ('Mariana', 'Adorei os produtos, são de ótima qualidade.'),
           ('Angelina', 'Produtos de ótima qualidade.'),
           ('Thiago', 'Comprarei novamente!');


create table categorias(
  id_categoria int NOT NULL AUTO_INCREMENT,
  nome_categoria varchar(80) DEFAULT NULL,
  PRIMARY KEY ('id_categoria')
);

INSERT INTO categorias(id_categoria, nome_categoria)
	VALUES (10, 'Panelas'),
    	   (20, 'Liquidificadores'),
           (30, 'Sanduicheiras'),
           (40, 'Ventiladores'),
           (50, 'Aspiradores'),
           (60, 'Centrifugas');

ALTER TABLE `produtos`
  ADD CONSTRAINT `id_categoria` FOREIGN KEY (`fk_idcategorias`) REFERENCES `categorias` (`id_categoria`); 