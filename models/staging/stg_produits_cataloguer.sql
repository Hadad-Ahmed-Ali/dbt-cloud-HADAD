--- Cet ensemble de données contient les produits référencés dans le catalogue Olist, pas les ventes.
--- Attention : 1 ligne = 1 produit référencé dans le catalogue

SELECT 

  product_id AS id_produit,
  product_category_name AS categorie_produit,
  product_name_lenght AS nombre_caractere_nom_produit,
  product_description_lenght AS nombre_caractere_description_produit,
  product_photos_qty AS nombre_photo_pub_produit,
  product_weight_g AS poids_produit,
  product_length_cm AS longueur_produit,
  product_height_cm AS hauteur_produit,
  product_width_cm AS largeur_produit

FROM {{ source('raw', 'olist_products_dataset') }}
