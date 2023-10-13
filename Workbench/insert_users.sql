use my_db;

insert into users (email, full_name, is_active, created_at)
	values ('jonh@doe.com', 'jonh doe', 1, now()), ('jane@doe.com', 'jane doe', 1, now());