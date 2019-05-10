insert into users values('admin', '{bcrypt}$2a$10$735sQ4iQRe2alCsAP/rt0egXo8p7VIVGFLXZzE6Ja0xoJj1V7FnQ6', true); --secret
insert into authorities values('admin', 'ROLE_ADMIN');

insert into users values('user', '{bcrypt}$2a$10$735sQ4iQRe2alCsAP/rt0egXo8p7VIVGFLXZzE6Ja0xoJj1V7FnQ6', true); --secret
insert into authorities values('user', 'ROLE_USER');