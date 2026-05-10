--- Cet ensemble de données comprend des données sur les options de paiement des commandes.
--- Attention : 1 ligne = 1 mode de paiement pour 1 commande

SELECT 
  order_id as id_commande,
  payment_sequential as sequence_paiement, --- un client peut payer une commande avec plus d'un mode de paiement. ceci genere les sequence des mode de paiement
  payment_type as mode_paiement,
  payment_installments as nombre_versement, --- si le client paye une ou plusieurs fois
  payment_value as prix_commande, --- valeur a payer pour la commande.

FROM {{ source('raw', 'olist_order_payments_dataset') }}
