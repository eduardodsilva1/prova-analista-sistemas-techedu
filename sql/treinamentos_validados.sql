SELECT
    COUNT(*) AS total_validadas_rh_2025
FROM
    solicitacao_treinamento st
WHERE
    st.validado_por_rh = TRUE
    AND st.data_validacao_rh BETWEEN DATE '2025-01-01' AND DATE '2025-12-31';