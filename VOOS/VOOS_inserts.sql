insert into pilotos
values (1, 'Paul Bonhomme'),
	   (2, 'Hannes Arch'),
       (3, 'Mike Mangold'),
       (4, 'Péter Besenyei'),
       (5, 'António Alonso')

insert into marcas
values (1, 'Boeing', 1400, 100),
       (2, 'Airbus', 980, 9000)

insert into avioes
values ('TP-1435', '777', 1),
       ('TP-2541','767', 1),
       ('TP-1097', 'A-320', 2), 
       ('TP-3412', 'A-380', 2)

insert into voos
values (1, '2014-12-24', '12:00', 'Paris', 'Lisboa', 'TP-2541'),
       (2, '2014-10-02', '15:00', 'Londres', 'Porto', 'TP-3412'),
       (3, '2014-11-11', '20:00', 'Lisboa', 'Faro', 'TP-1097'),
       (4, '2014-09-24', '09:00', 'Lisboa', 'Madrid', 'TP-1097')

insert into comandantes
values (1, 1),
       (2, 1),
       (3, 2),
       (4, 4)