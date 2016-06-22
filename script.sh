#!/bin/bash

#Rodando script de configuração do banco de dados
mysql -u root -proot -e "CREATE database teste;"

mysql -u root -proot -e "SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;" teste
mysql -u root -proot -e "SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;" teste
mysql -u root -proot -e "SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';" teste

mysql -u root -proot -e "CREATE  TABLE Utilizador1 (
                                    id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                    nome VARCHAR(50) NOT NULL,
                                    sobrenome VARCHAR(50) NOT NULL ,
                                    email VARCHAR(50) NOT NULL ,
                                    genero VARCHAR(20) NOT NULL ,
                                    senha VARCHAR(50) NOT NULL ,
                                    apelido VARCHAR(50) NOT NULL ,
                                    dataNascimento DATE NULL DEFAULT NULL
                                    ) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARACTER SET = utf8" teste




