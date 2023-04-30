BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "dados_pessoais" (
	"nome"	TEXT,
	"idade"	INTEGER,
	"ocupacao"	TEXT,
	"email"	TEXT,
	"celular"	TEXT
);
CREATE TABLE IF NOT EXISTS "experiencia" (
	"cargo"	TEXT,
	"empresa"	TEXT,
	"data_inicio"	TEXT,
	"data_final"	TEXT
);
CREATE TABLE IF NOT EXISTS "formacao" (
	"Instituicao"	TEXT,
	"Curso"	TEXT,
	"Ano_Inicio"	TEXT,
	"Ano_Conclusao"	TEXT
);
CREATE TABLE IF NOT EXISTS "sobre_mim" (
	"perfil_pessoal"	TEXT
);
INSERT INTO "dados_pessoais" ("nome","idade","ocupacao","email","celular") VALUES ('keylla cristina oliveira bispo',18,'estudante','keylla.bispo@sou.inteli.edu.br','11945342308');
INSERT INTO "experiencia" ("cargo","empresa","data_inicio","data_final") VALUES ('estudante','inteli','01/2023','12/2026');
INSERT INTO "experiencia" ("cargo","empresa","data_inicio","data_final") VALUES ('assistente rh','graded','05/2022','10/2022');
INSERT INTO "formacao" ("Instituicao","Curso","Ano_Inicio","Ano_Conclusao") VALUES ('inteli','sistemas de informacao','2023','2026');
INSERT INTO "sobre_mim" ("perfil_pessoal") VALUES ('cursando sistemas de informação no inteli, com interesse em economia e negocios. conhecimento em desenvolvimento web, ux design e python. experiência com atividades administrativas, atendimento ao cliente e gerenciamento de tarefas.');
COMMIT;
