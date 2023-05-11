BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "dados_pessoais" (
	"id"	INTEGER NOT NULL,
	"nome"	TEXT NOT NULL,
	"idade"	INTEGER NOT NULL,
	"email"	TEXT NOT NULL,
	"celular"	INTEGER NOT NULL,
	"ocupacao_atual"	TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "formacao" (
	"id_formacao"	INTEGER NOT NULL,
	"id_dados_pessoais"	INTEGER NOT NULL,
	"nome"	TEXT NOT NULL,
	"curso"	TEXT NOT NULL,
	"instituicao"	TEXT NOT NULL,
	PRIMARY KEY("id_formacao" AUTOINCREMENT),
	FOREIGN KEY("id_dados_pessoais") REFERENCES "dados_pessoais"("id")
);
CREATE TABLE IF NOT EXISTS "experiencia" (
	"id"	INTEGER NOT NULL,
	"id_dados_pessoais"	INTEGER,
	"cargo"	NUMERIC NOT NULL,
	"empresa"	TEXT NOT NULL,
	"data_inicio"	TEXT NOT NULL,
	"data_final"	TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("id_dados_pessoais") REFERENCES "dados_pessoais"("nome")
);
CREATE TABLE IF NOT EXISTS "habilidades" (
	"id_skills"	INTEGER NOT NULL,
	"id_dados_pessoais"	INTEGER NOT NULL,
	"skill_1"	TEXT NOT NULL,
	"skill_2"	TEXT NOT NULL,
	"skill_3"	TEXT NOT NULL,
	PRIMARY KEY("id_skills" AUTOINCREMENT),
	FOREIGN KEY("id_dados_pessoais") REFERENCES "dados_pessoais"("id")
);
CREATE TABLE IF NOT EXISTS "sobre_mim" (
	"id_sobre_mim"	INTEGER NOT NULL,
	"id_dados_pessoais"	INTEGER,
	"descricao"	TEXT NOT NULL,
	PRIMARY KEY("id_sobre_mim" AUTOINCREMENT),
	FOREIGN KEY("id_dados_pessoais") REFERENCES "dados_pessoais"("id")
);
INSERT INTO "dados_pessoais" ("id","nome","idade","email","celular","ocupacao_atual") VALUES (1,'keylla cristina oliveira bispo',18,'keylla.bispo@sou.inteli.edu.br
',11945342308,'estudante');
INSERT INTO "formacao" ("id_formacao","id_dados_pessoais","nome","curso","instituicao") VALUES (1,1,'keylla cristina oliveira bispo','sistemas de informacao','inteli');
INSERT INTO "experiencia" ("id","id_dados_pessoais","cargo","empresa","data_inicio","data_final") VALUES (1,NULL,'assistente de rh | expatriados
','graded school','03/2022','10/2022');
INSERT INTO "habilidades" ("id_skills","id_dados_pessoais","skill_1","skill_2","skill_3") VALUES (1,2,'liderança','comunicacao','pensamento_critico');
INSERT INTO "sobre_mim" ("id_sobre_mim","id_dados_pessoais","descricao") VALUES (1,3,'cursando sistemas de informacao no inteli, com
interesse em economia e negocios. conhecimento
basico em desenvolvimento web, ux design e python.
experiencia com atividades administrativas,
atendimento ao cliente e gerenciamento de tarefas.');
COMMIT;
