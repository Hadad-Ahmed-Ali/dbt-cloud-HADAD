--- Cet ensemble de données comprend des données sur les vendeurs présents sur la plateforme Olist et qui ont exécuté des commandes.
--- Attention : 1 ligne = 1 vendeur inscrit sur la plateforme


SELECT  
  seller_id as id_vendeur,
  seller_zip_code_prefix as code_postal_vendeur,
  seller_city as ville_vendeur,
  seller_state as etat_vendeur

FROM {{ source('raw', 'olist_sellers_dataset') }}
