--- C'est l'ensemble de données de base. À partir de chaque commande, on peut trouver toutes les autres informations.
--- 1 ligne = 1 commande effectué

SELECT 

  order_id AS id_commande, --- Identifiant unique de la commande
  customer_id AS id_client_commande, --- Identifiant du client associé à cette commande. Attention : un même client peut avoir plusieurs customer_id s'il passe plusieurs commandes. L'identifiant réellement unique du client se trouve dans customer_unique_id (table customers).
  order_status AS statut_commande, --- Statut actuel de la commande (ex : delivered, shipped, canceled, etc.)
  order_purchase_timestamp AS horodage_achat, --- Date et heure à laquelle le client a passé la commande sur le site
  order_approved_at AS horodage_approbation_paiement, --- Date et heure à laquelle le paiement de la commande a été approuvé
  order_delivered_carrier_date AS horodage_remise_transporteur, --- Date à laquelle la commande a été remise au transporteur partenaire logistique
  order_delivered_customer_date AS date_livraison_client, --- Date réelle à laquelle la commande a été livrée au client
  order_estimated_delivery_date AS date_prevu_livraison_client --- Date de livraison estimée annoncée au client lors de l'achat

FROM {{ source('raw', 'olist_orders_dataset') }}
