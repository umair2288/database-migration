-- loading product table

insert into shoppingov2.Products (
 id,
 title,
 addedDate,
 brand_id,
 category_id,
 isDelete,
 lastModified
)
select 
prod.product_id
,prod.product_title as title 
,prod.product_date as AddedDate
,1 as Brand_id
,prod.pro_cat_id as category_id
,deleteProduct as IsDelete
,NOW() as lastModified

from shoppingo.products as prod


-- loading brand table (unknown values)
insert into shoppingov2.brand 
(
	id,
	title,
	isDelete,
	image_id,
	lastModified
) values(
	1
	,'<Unknown>'
	,0
	,1
	,NOW()

)

-- loading image table (unknown values)
insert into shoppingov2.image 
(
	id,
	image,
	isDelete,
	lastModified
) values(
	1
	,'<Unknown>'
	,0
	,NOW()

)


-- loading category tree table

insert into shoppingov2.categorytree
(
 id,
 title,
 parent_id,
 description,
 isDelete,
 lastModified
)
select
cat.cat_id
,cat.cat_title
,cat.cat_id as parent_id
,cat.cat_desc as description
,0 as isDelete
,NOW() as lastModified
from shoppingo.categories as cat
union 
select 
pro_cat.pro_cat_id as category_id
,pro_cat.pro_cat_title as title
,cat.cat_id as parent_id
,pro_cat.pro_cat_desc as Description
,0 as isDelete
,NOW() as lastModified
from shoppingo.product_categories as pro_cat
inner join shoppingo.categories as cat on cat.cat_id = pro_cat.cat_id

-- loading varient table
insert into shoppingov2.variant (
	id,
	title,
	isDelete,
	lastmodified
)
select 
var.var_id as id
,var.var_title as title
,0 as isDelete
,NOW() as lastModified
from shoppingo.variant_type as var


-- loading varientvalue table
insert into test.variantvalue(
	
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
union
select 
'customer_orders' as type
,pv.product_id
,pv.var1_id as variant_id
,co.weight as value
,1 as IsDeleted
from customer_orders as co 
inner join product_variant as pv on co.pro_var_id = pv.pro_var_id
where co.weight >0 and co.weight <> 1
) as a
group by a.variant_id,
a.value,
a.isDeleted

-- loading product combinations values
select 
vv.id as varient_value_id,
pv.product_id as product_id,
vv.variant_id,
vv.value,
vv.isDelete
from shoppingo.product_variant as pv 
left join shoppingov2.variantvalue as vv on vv.variant_id = pv.var1_id and vv.value = pv.var1_value
where pv.product_id = 84 


-- loading product combinations
select a.combinationType ,
a.varient_value_id,
a.product_id

from 
(
select 
'1 Varient' as combinationType,
vv.id as varient_value_id,
pv.product_id as product_id,
vv.variant_id,
vv.value,
vv.isDelete
from shoppingo.product_variant as pv 
inner join shoppingov2.variantvalue as vv on vv.variant_id = pv.var1_id and vv.value = pv.var1_value
where  pv.var2_id = 0 -- product that has only one type of varient value
union
select
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
where a.product_id = 93



select 
vv.id as varient_value_id,
pv.product_id as product_id,
vv.variant_id,
vv.value,
vv.isDelete
from shoppingo.product_variant as pv 
left join shoppingov2.variantvalue as vv on vv.variant_id = pv.var1_id and vv.value = pv.var1_value
where pv.product_id = 84 


-- loading product combinations values
select a.combinationType ,
a.varient_value_id,
a.product_id

from 
(
select 
'1 Varient' as combinationType,
vv.id as varient_value_id,
pv.product_id as product_id,
vv.variant_id,
vv.value,
vv.isDelete
from shoppingo.product_variant as pv 
inner join shoppingov2.variantvalue as vv on vv.variant_id = pv.var1_id and vv.value = pv.var1_value
where  pv.var2_id = 0 -- product that has only one type of varient value
union
select
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
where a.product_id = 93









