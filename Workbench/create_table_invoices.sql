use my_db;

create table invoices(
	id int unsigned primary key auto_increment,
    
    -- максимум 10 цифр, 4 справа от запятой 
    amount decimal(10,4),
    
    -- тип должен совпадать с полем id из таблицы users
    user_id int unsigned,
    
    -- добавляем внешний ключ и ссылку?
    foreign key (`user_id`) references users(`id`) 
		-- при удалии пользователя удаляется также все его счета
        on delete set null 
        
        -- при обновлении каскад?
        on update cascade
);