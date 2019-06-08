
SELECT  * -- p.title,pc.id, v.title , vv.value, pcv.`isDelete`
FROM shoppingov2.products as p 
inner join shoppingov2.productcombinations as pc on pc.product_id = p.id
left join shoppingov2.productcombinationvalues as pcv on pcv.productCombination_id = pc.id
-- inner join shoppingov2.variantvalue as vv on vv.id = pcv.`VariantValue_id`
-- inner join shoppingov2.variant as v on v.id = vv.variant_id
where p.id = 565




truncate table shoppingov2.variantvalue