-- Databricks notebook source
SELECT *
FROM bronze_olist.olist_sellers_dataset

-- COMMAND ----------

SELECT *
FROM bronze_olist.olist_seller_dataset
WHERE seller_city='rio de janeiro'

-- COMMAND ----------

SELECT *
FROM bronze_olist.olist_orders_dataset
WHERE order_delivered_customer_date > order_estimated_delivery_date

-- COMMAND ----------

SELECT *, 
       date(order_delivered_customer_date) AS data_entrega,
       date(order_estimated_delivery_date) AS data_prometida
FROM bronze_olist.olist_orders_dataset
WHERE date(order_delivered_customer_date) > date(order_estimated_delivery_date)
