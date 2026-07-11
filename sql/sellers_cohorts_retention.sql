with t1 as (
select seller_id, date(date_trunc('month', min(date_created))) as cohort_month
from sandbox.orders o join  sandbox.order_details od on o.order_id = od.order_id 
group by seller_id
)
select 
t1.cohort_month,
date(date_trunc('month',date_created)) as  purchase_month,
row_number()over(partition by t1.cohort_month order by date(date_trunc('month',date_created))) purchase_month_number,
count(distinct od.seller_id) as sellers_created,
count(distinct od.seller_id)*1.0/min(cohort_size) as retention,
sum(quantity * price)/count(distinct od.seller_id) as arpps_created,
sum(quantity * price) as gmv_created
from sandbox.orders o join  sandbox.order_details od on o.order_id = od.order_id 
join t1 on od.seller_id = t1.seller_id
join (
select cohort_month, count(*) as cohort_size
from t1
group by cohort_month
	) as t2 on t1.cohort_month = t2.cohort_month
group by t1.cohort_month, date(date_trunc('month', date_created))
order by t1.cohort_month, date(date_trunc('month', date_created))
