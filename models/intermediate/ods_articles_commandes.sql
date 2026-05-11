--- Chaque ligne = un article vendu dans une commande.

SELECT
    a.id_commande,
    a.id_article,
    a.id_produit,
    a.prix_article,
    a.fret_article,
    v.id_vendeur,
    v.ville_vendeur,
    v.etat_vendeur,
    p.poids_produit,
    p.longueur_produit,
    p.hauteur_produit,
    p.largeur_produit,
    p.categorie_produit

FROM {{ ref('stg_articles_dans_commandes') }} a

LEFT JOIN {{ ref('stg_produits_cataloguer') }} p
    ON a.id_produit = p.id_produit

LEFT JOIN {{ ref('stg_vendeur') }} v
    ON a.id_vendeur = v.id_vendeur
