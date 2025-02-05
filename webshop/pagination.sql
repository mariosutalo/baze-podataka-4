--   let page = parseInt(req.query.page) || 1;
--   let limit = parseInt(req.query.limit) || 10;
--   let offset = (page - 1) * limit;

select count(*) as count from products;

select * from products limit 0, 10;

select * from products where id = 1;

select name, price from products where id = 4;