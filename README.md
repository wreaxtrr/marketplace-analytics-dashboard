# Marketplace Analytics Dashboard

BI-дашборд для анализа ключевых метрик маркетплейса: продаж, пользовательской активности, воронки событий, монетизации и удержания продавцов.

## Описание проекта

Проект представляет собой интерактивный дашборд в Yandex DataLens.  
Цель проекта — собрать основные продуктовые и бизнес-метрики маркетплейса в одном месте и оценить динамику продаж, активность пользователей, конверсию воронки и retention продавцов.

## Инструменты

- Yandex DataLens
- SQL
- PostgreSQL
- GitHub

## Структура дашборда

### Events & Funnel

Раздел для анализа пользовательской активности и воронки.

Метрики:
- Daily Active Users
- Daily Active Customers
- DAU to DAC Conversion Rate
- View to Cart Conversion
- Cart to Purchase Conversion
- View to Purchase Conversion
- ARPU
- ARPPU

Важно: раздел Events & Funnel построен на данных пользовательских событий за ноябрь 2019 года.

### Sales Analytics

Раздел для анализа созданных и оплаченных заказов.

Метрики:
- GMV by Created Orders
- GMV by Paid Orders
- Created Orders
- Paid Orders
- AOV by Created Orders
- AOV by Paid Orders
- Paying Users
- Paid Orders Margin

### Seller Cohorts & Retention

Раздел для когортного анализа продавцов.

Метрики:
- Seller Cohorts
- Active Sellers
- Seller Retention
- GMV Created
- ARPPS Created

## Ссылки на дашборды

- [Events & Funnel](https://datalens.yandex/k7m2yeux53723)
- [Sales Analytics](https://datalens.yandex/j6ktthik5znw2)
- [Seller Cohorts & Retention](https://datalens.yandex/4r6j4vj32o66n)

## Скриншоты

Скриншоты будут добавлены позже.

## SQL-запросы

SQL-запросы будут добавлены позже.

## Основные выводы

- Дашборд позволяет отслеживать ключевые метрики маркетплейса: продажи, активность пользователей, воронку и удержание продавцов.
- Разделение созданных и оплаченных заказов помогает сравнивать сформированный спрос и фактическую монетизацию.
- Воронка событий показывает, на каких этапах пользователи теряются до покупки.
- ARPU и ARPPU позволяют оценить среднюю выручку на пользователя и на платящего пользователя.
- Когортный анализ продавцов помогает оценить, как меняется активность продавцов после первого месяца.
