insert into usr (id, username, password, active)
    values (1, 'admin', '123', 1);

insert into user_roles (user_id, roles)
    values (1, 'USER'), (1, 'ADMIN');