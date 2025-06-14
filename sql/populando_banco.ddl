-- Inserir colaboradores
INSERT INTO colaborador (nome, email) VALUES
('Ana Paula', 'ana.paula@example.com'),
('Bruno Souza', 'bruno.souza@example.com'),
('Carla Mendes', 'carla.mendes@example.com');

-- Inserir treinamentos
INSERT INTO treinamento (titulo, descricao) VALUES
('Lideran�a e Gest�o de Equipes', 'Capacita��o de l�deres para gest�o eficiente.'),
('Excel Avan�ado', 'Uso de fun��es, tabelas din�micas e gr�ficos avan�ados.'),
('Comunica��o Empresarial', 'T�cnicas de comunica��o no ambiente corporativo.');

-- Inserir solicita��es de treinamento
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
-- Solicita��o aprovada
(1, 1, CURRENT_TIMESTAMP, 'aprovado', '', 'Bruno Souza', TRUE, CURRENT_TIMESTAMP),

-- Solicita��o rejeitada (com motivo obrigat�rio)
(2, 2, CURRENT_TIMESTAMP, 'rejeitado', 'Treinamento fora do escopo da fun��o.', 'Ana Paula', TRUE, CURRENT_TIMESTAMP),

-- Solicita��o pendente (sem motivo de rejei��o, pois n�o foi rejeitado)
(3, 3, CURRENT_TIMESTAMP, 'pendente', '', NULL, FALSE, NULL);