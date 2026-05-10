-- Cet ensemble de données inclut des données sur les éléments achetés dans chaque commande.
-- Attention : 1 ligne = 1 article dans une commande


SELECT 
  order_id as id_commande,
  order_item_id as id_article, --- article dans la commande
  product_id as id_produit,
  seller_id as id_vendeur,
  shipping_limit_date as date_expedition_vendeur, --- date limite d'expédition du vendeur pour la gestion de la commande au partenaire logistique.
  price as prix_article,
  freight_value as fret_article, --- Article de valeur de fret (Si une commande contient plus d'un article, la valeur du fret est répartie entre les articles)

FROM {{ source('raw', 'olist_order_items_dataset') }}