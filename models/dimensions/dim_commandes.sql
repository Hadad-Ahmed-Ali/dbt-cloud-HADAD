SELECT 

    c.id_commande,
    c.id_client_commande,
    c.statut_commande,
    c.horodage_achat,
    c.horodage_approbation_paiement,
    c.horodage_remise_transporteur,
    c.date_livraison_client,
    c.date_prevu_livraison_client,
    a.id_avis,
    a.avis_note,
    a.titre_commentaire,
    a.message_client,
    a.date_creation_commentaire,
    a.date_reponse_enquete

FROM {{ ref('ods_commandes') }} c
LEFT JOIN {{ ref('ods_avis_clients') }} a
    ON a.id_commande = c.id_commande

