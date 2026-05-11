--- Une commande peut avoir : plusieurs paiements, plusieurs modes de paiement
--- Attention : 1 ligne = 1 mode de paiement pour 1 commande

SELECT

    id_commande,
    sequence_paiement,
    mode_paiement,
    nombre_versement,
    prix_commande

FROM {{ ref('stg_options_paiement_commande') }}
