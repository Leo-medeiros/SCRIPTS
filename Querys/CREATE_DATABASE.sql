CREATE DATABASE TesteDanilo ON (NAME = Danilo_Biazotto, 
FILENAME = 'C:\SQL\TesteDanilo.mdf',
SIZE = 10, MAXSIZE = 50, FILEGROWTH = 5)
LOG ON (NAME = TesteDanilo_Log,
FILENAME = 'C:\SQL\TesteDanilolog.ldf',
SIZE = 5MB, MAXSIZE = 25MB, FILEGROWTH = 5MB);

