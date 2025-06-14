-- Inserir colaboradores
INSERT INTO colaborador (nome, email) VALUES
('Ana Paula', 'ana.paula@example.com'),
('Bruno Souza', 'bruno.souza@example.com'),
('Carla Mendes', 'carla.mendes@example.com');

-- Inserir treinamentos
INSERT INTO treinamento (titulo, descricao) VALUES
('Liderança e Gestão de Equipes', 'Capacitação de líderes para gestão eficiente.'),
('Excel Avançado', 'Uso de funções, tabelas dinâmicas e gráficos avançados.'),
('Comunicação Empresarial', 'Técnicas de comunicação no ambiente corporativo.');

-- Inserir solicitações de treinamento
INSERT INTO solicitacao_treinamento (
    colaborador_id,
    treinamento_id,
    data_solicitacao,
    status,
    motivo_rejeicao,
    aprovado_por,
    validado_por_rh,
    data_validacao_rh
) VALUES
-- Solicitação aprovada
(1, 1, CURRENT_TIMESTAMP, 'aprovado', '', 'Bruno Souza', TRUE, CURRENT_TIMESTAMP),

-- Solicitação rejeitada (com motivo obrigatório)
(2, 2, CURRENT_TIMESTAMP, 'rejeitado', 'Treinamento fora do escopo da função.', 'Ana Paula', TRUE, CURRENT_TIMESTAMP),

-- Solicitação pendente (sem motivo de rejeição, pois não foi rejeitado)
(3, 3, CURRENT_TIMESTAMP, 'pendente', '', NULL, FALSE, NULL);