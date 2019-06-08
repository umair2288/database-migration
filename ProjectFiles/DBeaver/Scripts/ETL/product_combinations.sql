--------------------------------------------------------------------------------
insert into  shoppingov2.productcombinations(
	id,
	product_id,
	isDelete,
	lastModified
)
select pv.pro_var_id as ProductCombinationId,
pv.product_id as ProductID,
pv.deleteProVar as isDelete,
NOW() as LastModifedDate
from shoppingo.product_variant as pv


-- loading customer_orders as deleted product combinations

insert into shoppingov2.productcombinations(
	product_id,
	isDelete,	
	lastModified
)
select pv.product_id,
1 as `isDelete`,
now() as `lastModified`
-- cast(co.weight as char)
from shoppingo.customer_orders as co
inner join shoppingo.product_variant as pv on pv.pro_var_id = co.pro_var_id
where co.weight > 0 
-- inner join shoppingov2.variantvalue as vv on strcmp(cast(vv.value as char), cast(co.weight as char)) = 0 

----------------------------------------------------------------------------------
insert into   shoppingov2.productcombinationvalues 
(
	VariantValue_id,
	productCombination_id,
	`isDelete`,
	`lastModified`	
)
select 
vv.id,
pc.id as Combination_id,
pc.isDelete as isDelete,
NOW() as LastModified
from
(select *
from shoppingo.product_variant as pv  where pv.var1_value= 'NULL' or pv.var1_value is null or pv.var1_value= ''
) a
inner join shoppingov2.variantvalue as vv on  a.var1_id = vv.variant_id
inner join shoppingov2.productcombinations as pc on pc.id = a.pro_var_id 




-- loading product combinations values
insert into   shoppingov2.productcombinationvalues 
(
	VariantValue_id,
	productCombination_id,
	`isDelete`,
	`lastModified`	
)
select 
a.varient_value_id,
pc.id as Combination_id,
pc.isDelete as isDelete,
NOW() as LastModified

from 
(
select 
pv.pro_var_id,
'No Varient' as combinationType,
vv.id as varient_value_id,
pv.product_id as product_id,
vv.variant_id,
vv.value,
vv.isDelete
from shoppingo.product_variant as pv 
inner join shoppingov2.variantvalue as vv on vv.variant_id = pv.var1_id and vv.value = pv.var1_value  
where pv.var1_id = 1 and var1_value = 'NULL'

union
select 
pv.pro_var_id,
'1 Varient' as combinationType,
vv.id as varient_value_id,
pv.product_id as product_id,
vv.variant_id,
vv.value,
vv.isDelete
from shoppingo.product_variant as pv 
inner join shoppingov2.variantvalue as vv on vv.variant_id = pv.var1_id and vv.value = pv.var1_value
 -- product that has only one type of varient value
union
select
pv.pro_var_id,
'2 Varients' as combinationType,
vv.id as varient_value_id,
pv.product_id as product_id,
vv.variant_id,
vv.value,
vv.isDelete
from shoppingo.product_variant as pv 
left join shoppingov2.variantvalue as vv on vv.variant_id = pv.var1_id and vv.value = pv.var1_value
where  pv.var2_id <> 0 and pv.var3_id = 0 -- and pv.product_id = 91
union
select 
pv.pro_var_id,
'2 Varients' as combinationType,
vv.id as varient_value_id,
pv.product_id as product_id,
vv.variant_id,
vv.value,
vv.isDelete
from shoppingo.product_variant as pv 
left join shoppingov2.variantvalue as vv on vv.variant_id = pv.var2_id and vv.value = pv.var2_value
where  pv.var2_id <> 0 and pv.var3_id = 0 -- and pv.product_id = 91
-- above products has only 2 varient type values
  -- and pv.product_id = 91
) as a
inner join shoppingov2.productcombinations as pc 
on pc.id = a.pro_var_id 


-- variant values
-- from product_variant table
insert into  shoppingov2.variantvalue(
	
variant_id,
	value,
	isDelete,
	lastModified
)

select distinct
a.variant_id,
if(a.value = 'NULL' or a.value = '','N/A',a.value) as value,
if( a.value = '', 1 ,a.isDeleted) as isDeleted,
NOW() as lastModified

from(
select 
'var1' as type
,pro_var.product_id
,pro_var.var1_id as variant_id
,pro_var.var1_value AS value
,deleteProVar as isDeleted
from shoppingo.product_variant as pro_var
union
select 
'var2' as type
,pro_var.product_id
,pro_var.var2_id as variant_id
,pro_var.var2_value as value
,deleteProVar as isDeleted
from shoppingo.product_variant as pro_var
union
select
'var3'  as type
,pro_var.product_id
,pro_var.var3_id as variant_id
,pro_var.var3_value as value
,deleteProVar as isDeleted
from shoppingo.product_variant as pro_var
union
select 
'var4' as type
,pro_var.product_id
,pro_var.var4_id as variant_id
,pro_var.var4_value as value
,deleteProVar as isDeleted
from shoppingo.product_variant as pro_var
) as a
group by a.variant_id,
a.value,
a.isDeleted

-- from customer_order table
insert into   shoppingov2.variantValue
(
	variant_id,
	value,
	isDelete,
	LastModified
	
)

select
1 as varient_id
,co.weight as value
, 1 as isDeleted
,NOW()

from shoppingo.customer_orders as co
where co.weight > 0 
group by co.pro_var_id
,co.weight


-- select *
-- from shoppingo.product_variant where product_id = 565
select *
from shoppingo.product_variant where product_id = 565

