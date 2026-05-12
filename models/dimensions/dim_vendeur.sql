--- 1 ligne = 1 vendeur qui a vendu un article

SELECT DISTINCT

    id_vendeur,
    ville_vendeur,
    etat_vendeur

FROM {{ ref('ods_articles_commandes') }}
