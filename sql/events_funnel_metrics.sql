select date(event_time)as dt,

count(distinct user_session) as sessions,
count(distinct (case when event_type  = 'purchase' then user_session end)) as sessions_with_purchase,

count(distinct user_id) as dau,
count(distinct (case when event_type  = 'view' then user_id end)) as users_with_view,
count(distinct (case when event_type  = 'cart' then user_id end)) as users_with_cart,
count(distinct (case when event_type  = 'purchase' then user_id end)) as users_with_purchase,

sum(case when event_type  = 'purchase' then price end) as gmv_created

from sandbox.events_201911
group by  date(event_time)
