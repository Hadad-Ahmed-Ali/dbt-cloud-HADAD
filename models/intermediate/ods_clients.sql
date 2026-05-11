--- 1 ligne = 1 client avec sa position geographique
--- Permet d’analyser : commandes par ville, commandes par région, distribution géographique

SELECT

    c.id_client,
    c.code_postal_client,
    c.ville_client,
    c.etat_client,
    v.latitude_ville,
    v.longitude_ville

FROM {{ ref('stg_client_emplacement') }} c
LEFT JOIN {{ ref('stg_ville') }} v
  ON c.code_postal_client = v.code_postal
