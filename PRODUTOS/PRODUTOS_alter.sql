alter table items add desconto decimal(10, 2) default 0 not null  
update items set desconto = 0 where desconto IS NULL
update items set desconto = 0.25 where unidades_item = 20
