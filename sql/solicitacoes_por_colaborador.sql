SELECT
    c.nome AS nome_colaborador,
    st.id AS solicitacao_id,
    st.status,
    t.titulo AS titulo_treinamento,
    st.data_solicitacao
FROM solicitacao_treinamento st
JOIN colaborador c ON c.id = st.colaborador_id
JOIN treinamento t ON t.id = st.treinamento_id
ORDER BY c.nome;