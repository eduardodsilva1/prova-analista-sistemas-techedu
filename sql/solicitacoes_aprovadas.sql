SELECT
    st.id AS solicitacao_id,
    c.nome AS nome_colaborador,
    st.aprovado_por,
    t.titulo AS titulo_treinamento,
    st.data_solicitacao
FROM solicitacao_treinamento st
JOIN colaborador c ON st.colaborador_id = c.id
JOIN treinamento t ON st.treinamento_id = t.id
WHERE st.status = 'aprovado'
  AND st.aprovado_por IS NOT NULL
ORDER BY st.data_solicitacao DESC;