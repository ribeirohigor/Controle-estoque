/**
* Projeto de um sistema de Gestão de estoque
*@author Higor Ribeiro	
*@version 1.0
*/

create database estoque;
use estoque;

create table usuarios (
	id int primary key auto_increment,
    usuario varchar (50) not null,
    login varchar (20) not null,
    senha varchar (250) not null,
    cargo varchar (50) not null,
    contato varchar (25) 
    );

    describe usuarios;
    
    /*********************CRUD**********************/
    
    -- CREATE (inserir 5 usuarios)
    insert into usuarios (usuario, login, senha, cargo, contato)
		values ('Higor Ribeiro', 'higor.ribeiro', '123@senac', 'IT Infrasctruture', '95959-6631');
	insert into usuarios (usuario, login, senha, cargo, contato)
        values ('Felipe Cachuf', 'felipe.cachuf', '123@senac', 'Suporte HelpDesk', '96565-4545');
	insert into usuarios (usuario, login, senha, cargo, contato)    
		values ('Igor Oliveira', 'igor.oliverio', '123@senac', 'Suporte HelpDesk', '98569-9845');
	insert into usuarios (usuario, login, senha, cargo, contato)    
		values ('Giovanna Gil', 'giovanna.gil', '123@senac', 'People Marketing', '99856-2312');
	insert into usuarios (usuario, login, senha,cargo, contato)
		values ('Fagner Braga', 'fagner.braga', '123@senac','Gestor Recursos Humanos', '96523-4521');
	-- READ1 (selecionar todos os usuarios)
    select * from usuarios;
    
    -- READ2 (selecionar 1 usuario espedifico por id)
	select * from usuarios where id = 1;
    
    -- UPDATE (alterar todos os dados de um usuário especifíco)
    update usuarios set usuario = 'Higor da Silva', login = 'higor.silva', senha = '321@senac' where id = 1;
    update usuarios set usuario = 'Felipe Cachuf', login = 'felipe.cachuf', senha = '321@senac' where id = 2;
    update usuarios set usuario = 'Igor Oliveira', login = 'igor.oliveira', senha = '321@senac' where id = 3;
    update usuarios set usuario = 'Giovanna Gil', login = 'giovanna.gil', senha = '321@senac' where id = 4;
    
    -- DELETE (excluir um usuario especifico)
    delete from usuarios where id = 6;
    
    -- Gerar a Documentação - Modelo ER(engenharia reversa)
    
    
    /******************************Drop DataBase****************************/
	-- drop database estoque (Exclui o Banco de Dados)
    drop database estoque;