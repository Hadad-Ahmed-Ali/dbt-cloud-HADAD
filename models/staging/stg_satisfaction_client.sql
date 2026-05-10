--- Cet ensemble de données comprend des données sur les avis effectués par les clients.
--- Attention : 1 ligne = 1 avis client pour une commande

SELECT

    review_id as id_avis,
    order_id as id_commande,
    review_score as avis_note,
    review_comment_title as titre_commentaire,
    review_comment_message as message_client,
    review_creation_date as date_creation_commentaire,
    review_answer_timestamp as date_reponse_enquete

FROM {{ source('raw', 'olist_order_reviews_dataset') }}