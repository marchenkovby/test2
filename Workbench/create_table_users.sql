use my_db;

create table users(
	-- primary key - только один - для уникальности и целостности объекта, unique - нет - для уникальности поля
	id int unsigned primary key auto_increment,
    
    -- not null - все должно быть значение
    -- email varchar(255) unique not null,
    email varchar(255) not null,
    
    full_name varchar(255) not null,
	is_active boolean default 0 not null,
	created_at datetime not null,
    
    -- создаем индекс - ускоряет запрос
    key `is_active`(`is_active`),

	-- вместо указания unique для email,
    -- могли указать здесь вот такcomment
    unique key `email`(`email`)
);