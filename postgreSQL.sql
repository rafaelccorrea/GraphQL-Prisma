CREATE TABLE users(
   id serial PRIMARY KEY,
   nome VARCHAR(255) NOT NULL,
   email VARCHAR(255) NOT NULL,
   createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE posts(
	id serial PRIMARY key,
	titulo VARCHAR(255) NOT NULL,
   conteudo TEXT NOT NULL,
   autorId INT NOT NULL,
   publicado BOOLEAN,
	createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY(autorId) REFERENCES users(id)
);

INSERT INTO public.users (nome, email, createdAt)
VALUES('Amanda Costa', 'a@a.com', CURRENT_TIMESTAMP),
('Beatriz Martins', 'b@b.com', CURRENT_TIMESTAMP),('Carla Souza', 'c@c.com',CURRENT_TIMESTAMP)


INSERT INTO posts (titulo, conteudo, autorId, publicado)
VALUES 
   ('Iniciando em JS', 'Conteúdo para iniciantes', 1 , true),
   ('Dicas de React', 'Melhores práticas', 2 , true),
   ('Sintaxe CommonJS', 'Usando módulos',3 , false);

ALTER TABLE "reviews" ADD FOREIGN KEY ("postId") REFERENCES "posts"("id") ON DELETE CASCADE ON UPDATE CASCADE

ALTER TABLE "reviews" ADD FOREIGN KEY ("reviewerId") REFERENCES "users"("id") ON DELETE CASCADE ON UPDATE CASCADE