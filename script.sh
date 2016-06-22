#!/bin/bash

#Rodando script de configuração do banco de dados
mysql -u root -proot -e "CREATE database teste;"

mysql -u root -proot -e "SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;" teste
mysql -u root -proot -e "SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;" teste
mysql -u root -proot -e "SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';" teste

mysql -u root -proot -e "CREATE  TABLE Utilizador (
                                    id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                    nome VARCHAR(50) NOT NULL,
                                    sobrenome VARCHAR(50) NOT NULL ,
                                    email VARCHAR(50) NOT NULL ,
                                    genero VARCHAR(20) NOT NULL ,
                                    senha VARCHAR(50) NOT NULL ,
                                    apelido VARCHAR(50) NOT NULL ,
                                    dataNascimento DATE NULL DEFAULT NULL
                                    ) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARACTER SET = utf8" teste

mysql -u root -proot -e "CREATE  TABLE Blog (
                                    idBlog INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                    titulo VARCHAR(50) NOT NULL ,
                                    categoria VARCHAR(50) NOT NULL ,
                                    dataCriacao DATE NOT NULL ,
                                    idUtilizador INT(10) UNSIGNED NULL DEFAULT NULL  FOREIGN KEY ASC,
                                    INDEX fk_idUtilizador CONSTRAINT (idUtilizador) ,
                                    REFERENCES Utilizador (id)
                                    ) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARACTER SET = utf8" teste

mysql -u root -proot -e "CREATE  TABLE Publicacao (
                                    idPublicacao INT(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
                                    tituloPublicacao VARCHAR(50) NOT NULL ,
                                    categoriaPublicacao VARCHAR(50) NOT NULL ,
                                    conteudoPublicacao TEXT NOT NULL ,
                                    idBlog INT(10) UNSIGNED NULL DEFAULT NULL ,
                                    notaPublicacao INT(11) NULL DEFAULT NULL ,
                                    statusPublicacao TINYINT(1) NULL DEFAULT NULL ,
                                    PRIMARY KEY (idPublicacao) ,
                                    INDEX idBlog_Blog (idBlog ASC) ,
                                    CONSTRAINT idBlog_Blog
                                    FOREIGN KEY (idBlog)
                                    REFERENCES Blog (idBlog)
                                    ON DELETE CASCADE ) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARACTER SET = utf8" teste

mysql -u root -proot -e "CREATE  TABLE Denuncia (
                                    idDenuncia INT(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
                                    dataDenuncia DATE NOT NULL ,
                                    conteudoDenuncia TEXT NOT NULL ,
                                    idBlog INT(11) UNSIGNED NULL DEFAULT NULL ,
                                    idUtilizador INT(11) UNSIGNED NULL DEFAULT NULL ,
                                    idPublicacao INT(11) UNSIGNED NULL DEFAULT NULL ,
                                    PRIMARY KEY (idDenuncia) ,
                                    INDEX idBlogDenuncia_Blog (idBlog ASC) ,
                                    INDEX idUtilizadorDenuncia_Utilizador (idUtilizador ASC) ,
                                    INDEX idPublicacaoDenuncia_Publicacao (idPublicacao ASC) ,
                                    CONSTRAINT idBlogDenuncia_Blog
                                    FOREIGN KEY (idBlog)
                                    REFERENCES Blog (idBlog),
                                    CONSTRAINT idPublicacaoDenuncia_Publicacao
                                    FOREIGN KEY (idPublicacao)
                                    REFERENCES Publicacao (idPublicacao),
                                    CONSTRAINT idUtilizadorDenuncia_Utilizador
                                    FOREIGN KEY (idUtilizador)
                                    REFERENCES Utilizador (id)) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARACTER SET = utf8" teste

mysql -u root -proot -e "SET SQL_MODE=@OLD_SQL_MODE;" teste
mysql -u root -proot -e "SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;" teste
mysql -u root -proot -e "SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;" teste









