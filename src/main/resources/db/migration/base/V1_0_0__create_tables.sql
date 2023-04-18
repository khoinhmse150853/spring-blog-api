CREATE TABLE Category (
	id bigint NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	name varchar(255) NOT NULL,
	description varchar(255) NOT NULL
);

CREATE TABLE Posts (
	id bigint NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	content varchar(255) NOT NULL,
	description varchar(255) NOT NULL,
	title varchar(255) NOT NULL UNIQUE,
	category_id bigint NOT NULL,
	FOREIGN KEY (category_id) REFERENCES Category(id)
);

CREATE TABLE Comments (
	id bigint NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	body varchar(255) DEFAULT NULL,
	email varchar(255) DEFAULT NULL,
	name varchar(255) DEFAULT NULL,
	post_id bigint NOT NULL,
	FOREIGN KEY (post_id) REFERENCES Posts(id)
);

CREATE TABLE Roles (
	id bigint NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	name varchar(255) NOT NULL
);

CREATE TABLE Users (
	id bigint NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	email varchar(255) NOT NULL UNIQUE,
	name varchar(255) NOT NULL,
	password varchar(255) NOT NULL,
	username varchar(255) NOT NULL UNIQUE
);

CREATE TABLE Users_roles (
	user_id bigint NOT NULL,
	role_id bigint NOT NULL,
	FOREIGN KEY (user_id) REFERENCES Users(id),
	FOREIGN KEY (role_id) REFERENCES Roles(id)
);