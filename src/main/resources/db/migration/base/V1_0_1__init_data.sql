INSERT INTO Category(name, description)
VALUES ('Category 1',
	'unt aut facere repellat provident occaecati excepturi optio reprehenderit');

INSERT INTO Category(name, description)
VALUES ('Category 2',
	'unt aut facere repellat provident occaecati excepturi optio reprehenderit');

INSERT INTO Posts(content, description, title, category_id)
VALUES ('quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto',
	'Post description 1',
	'unt aut facere repellat provident occaecati excepturi optio reprehenderit', 1);

INSERT INTO Posts(content, description, title, category_id)
VALUES ('est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla',
	'Post description 2',
	'qui est esse', 2);

INSERT INTO Comments(body, email, name, post_id)
VALUES ('laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium',
	'Eliseo@gardner.biz',
	'd labore ex et quam laborum',
	1);

INSERT INTO Comments(body, email, name, post_id)
VALUES ('est natus enim nihil est dolore omnis voluptatem numquam\net omnis occaecati quod ullam at\nvoluptatem error expedita pariatur\nnihil sint nostrum voluptatem reiciendis et',
	'Jayne_Kuhic@sydney.com',
	'quo vero reiciendis velit similique earum',
	1);

INSERT INTO Comments(body, email, name, post_id)
VALUES ('quia molestiae reprehenderit quasi aspernatur\naut expedita occaecati aliquam eveniet laudantium\nomnis quibusdam delectus saepe quia accusamus maiores nam est\ncum et ducimus et vero voluptates excepturi deleniti ratione',
	'Nikita@garfield.biz',
	'odio adipisci rerum aut animi',
	2);

INSERT INTO Users (email, name, password, username)
VALUES ('khoi@gmail.com', 'khoi', '$2a$10$16ETIRpm3IVVan.oHoZz4OQbSrq6r0bMNvd7jTwXX9GUqtzB/32zi', 'khoi');

INSERT INTO Users (email, name, password, username)
VALUES ('admin@gmail.com', 'admin', '$2a$10$oMA9O4v3sH3wY4GINOOMte0qlbrMB8vGzJhkJwcvM.51PjEzag4EK', 'admin');

INSERT INTO Roles (name)
VALUES ('ROLE_USER');

INSERT INTO Roles (name)
VALUES ('ROLE_ADMIN');

INSERT INTO Users_roles
VALUES (1, 1);

INSERT INTO Users_roles
VALUES (2, 2);