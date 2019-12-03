SELECT 
    d.*,
    extract(second from data/*, second from data_retorno*/) as tempo
FROM
    (SELECT 
        b.*,
            (SELECT 
                    (MIN(data)) AS data_retorno
                FROM
                    public.ap_state d
                WHERE
                    d.id_unidade = b.id_unidade
                        AND d.id_ies = b.id_ies
                        AND data > b.data
                        AND d.estado_ap = 'up') AS data_retorno
    FROM
        (SELECT 
        a.*
FROM
public.ap_state a) b
        
    WHERE
        estado_ap = 'down') d
WHERE
    data_retorno IS NOT NULL;
