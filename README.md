<img height="200px"  align="right" align="top" src="https://github.com/matheusbanqueiro/Sistema-Academico/assets/101984947/97842e28-8925-4437-b326-357565ad76b4"></a>

# Sistema Java Code INSTITUTE 🏫

This project uses lot of stuff as:

 📌 [Tailwind](https://tailwindcss.com/) </br>
 📌 [Apache Tomcat 9.0](https://tomcat.apache.org/) </br>
 📌 [MySQL](https://www.mysql.com/) </br>
 📌 [MySQL Workbench](https://www.mysql.com/products/workbench/) </br>
 📌 [Eclipse](https://eclipseide.org/) </br>
 📌 [Java](https://docs.oracle.com/en/java/) </br>

You need this script to in your database:
```
CREATE DATABASE IF NOT EXIST academico;

CREATE TABLE IF NOT EXIST aluno (
    ra INT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
    endereco VARCHAR(255),
    periodo VARCHAR(50),
    datanascimento DATE
);
CREATE TABLE IF NOT EXIST usuarios (
    id INT AUTO INCREMENT PRIMARY KEY,
    login VARCHAR(255),
    senha INT
);
INSERT INTO usuarios (login,senha) VALUES ('matheus@javacode', '032004');
```
Enter the ConnectionFactory and put your mysql login and password:
```
String login = "root";
String senha = "Matheus@2004";
String url = "jdbc:mysql://localhost:3306/academico";

return DriverManager.getConnection(url, login, senha);
```
