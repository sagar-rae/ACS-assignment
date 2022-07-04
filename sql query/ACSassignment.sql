CREATE DATABASE ACSassignment

USE ACSassignment

CREATE TABLE LoginForm(
Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
--Name NVARCHAR(55) NOT NULL,
U_email NVARCHAR(55) NOT NULL,
U_pass NVARCHAR(55) NOT NULL
)

INSERT INTO LoginForm VALUES('user@gmail.com','user123')
truncate table LoginForm
drop table LoginForm

SELECT * FROM LoginForm

CREATE OR ALTER PROC ACSSP
@Flag NVARCHAR(55) = NULL,
@U_email NVARCHAR(55) = NULL,
@U_pass NVARCHAR(55) = NULL,
@Name NVARCHAR(55) = NULL
AS
BEGIN
	IF @Flag = 'ChangePw'
	BEGIN
		UPDATE LoginForm SET U_pass=@U_pass WHERE U_email=@U_email
	END
	IF @Flag = 'CheckUser'
	BEGIN
		SELECT * FROM LoginForm WHERE U_email=@U_email
	END
	IF @Flag = 'Login'
	BEGIN
		SELECT * FROM LoginForm WHERE U_email=@U_email AND U_pass=@U_pass
	END
	IF @Flag = 'SignIn'
	BEGIN
		INSERT INTO LoginForm VALUES(@U_email,@U_pass)
	END
END

