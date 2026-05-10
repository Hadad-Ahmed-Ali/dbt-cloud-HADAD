
--- Cet ensemble de données contient des informations sur le client et son emplacement :

SELECT 
  customer_id as id_client_commande, --- chaque client a un id pour chaque commande
  customer_unique_id as id_client,
  customer_zip_code_prefix as code_postal_client,
  customer_city as ville_client,
  customer_state as etat_client

FROM {{ source('raw', 'olist_customers_dataset') }}
