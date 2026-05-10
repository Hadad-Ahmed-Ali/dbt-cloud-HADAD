--- Cet ensemble de données contient des informations sur les codes postals brésiliens et ses coordonnées lat/lng. On peut l'utiliser pour tracer des cartes et trouver des distances entre les vendeurs et les clients.


SELECT 
  geolocation_zip_code_prefix as code_postal,
  geolocation_lat as latitude_ville,
  geolocation_lng as longitude_ville,
  geolocation_city as ville,
  geolocation_state as etat

FROM {{ source('raw', 'olist_geolocation_dataset') }}