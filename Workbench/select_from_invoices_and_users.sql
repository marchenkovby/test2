use my_db;

select invoices.id, amount, full_name
from invoices
inner join users on users.id = user_id