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

## Data Preparation

Для подготовки данных использовались SQL-запросы и вычисляемые поля Yandex DataLens.

### SQL-based datasets

| Файл | Описание |
|---|---|
| [events_funnel_metrics.sql](sql/events_funnel_metrics.sql) | Агрегация пользовательских событий за ноябрь 2019 года: sessions, DAU, users with view/cart/purchase и GMV created |
| [sellers_cohorts_retention.sql](sql/sellers_cohorts_retention.sql) | Когортный анализ продавцов: cohort month, purchase month, active sellers, seller retention, GMV и ARPPS |

### DataLens calculated datasets

- `created_orders_metrics` — метрики по созданным заказам: GMV, Orders, Active Customers, AOV
- `paid_orders_metrics` — метрики по оплаченным заказам: GMV, Orders, Paying Users, AOV, Margin

Часть метрик рассчитывалась с помощью вычисляемых полей Yandex DataLens, что позволило разделить подготовку данных между SQL-слоем и BI-слоем.
  
### DataLens calculated datasets

- `created_orders_metrics`
- `paid_orders_metrics`

В части датасетов использовались вычисляемые поля и функции Yandex DataLens для расчёта дополнительных метрик.

## Основные выводы

- Дашборд позволяет отслеживать ключевые метрики маркетплейса: продажи, активность пользователей, воронку и удержание продавцов.
- Разделение созданных и оплаченных заказов помогает сравнивать сформированный спрос и фактическую монетизацию.
- Воронка событий позволяет оценить конверсию между этапами view → cart → purchase и определить проблемные места пользовательского пути.
- ARPU и ARPPU позволяют оценить среднюю выручку на пользователя и на платящего пользователя.
- Когортный анализ продавцов помогает оценить, как меняется активность продавцов после первого месяца.
