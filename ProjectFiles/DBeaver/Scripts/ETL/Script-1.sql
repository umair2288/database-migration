

CREATE TABLE `variantvalue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `lastModified` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=738 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



CREATE TABLE `productcombinations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  pro_var_id int,
  `isDelete` tinyint(1) NOT NULL,
  
  `product_id` int(11) NOT NULL,
  `lastModified` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) 

CREATE TABLE `productcombinationvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isDelete` tinyint(1) NOT NULL,
  `productCombination_id` int(11) NOT NULL,
  `VariantValue_id` int(11) NOT NULL,
  `lastModified` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=2048 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;








-- deleted prodouct combnations from deleted orders
insert into test.productcombinations (
	product_id,
	pro_var_id,
	`isDelete`,
	`lastModified`
)


select
pv.product_id as product_id
,co.pro_var_id
, 1 as isDeleted
,NOW() as LastModified

from shoppingo.customer_orders as co
inner join shoppingo.product_variant as pv on pv.pro_var_id = co.pro_var_id
where co.weight > 0 
group by co.pro_var_id
,co.weight


insert into  shoppingov2.productcombinationvalues

(
	productCombination_id,
	VariantValue_id,
	isDelete,
	LastModified


)

select a.pro_var_id as productCombinationID,
vv.id as  variantValueID,
1 as isDelete,
NOW() as LastModifed

-- select count(*)
from
(
	select weight , pv.product_id , pv.pro_var_id
	from shoppingo.customer_orders as co 
	inner join shoppingo.product_variant as pv on co.pro_var_id = pv.pro_var_id
	where weight > 0
	group by  weight , pv.product_id , pv.pro_var_id
) as a
inner join ( select id, value,variant_id
			from variantvalue
			where isDelete = 1
			group by value) as vv
			on vv.value = cast(a.weight as char) and vv.variant_id =1
-- inner join test.productcombinations as pc on pc.pro_var_id = a.pro_var_id
-- group by  pc.id , vv.id ,pc.product_id


			
select count(*) from  shoppingov2.productcombinations	-- 32 816
		
			
			
			
			
			
select count(*)
from shoppingo.customer_orders

where weight > 0
group by  weight , pro_var_id