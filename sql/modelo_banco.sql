CREATE TABLE colaborador (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE treinamento (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    descricao TEXT
);

CREATE TABLE solicitacao_treinamento (
    id SERIAL PRIMARY KEY,
    colaborador_id INT REFERENCES colaborador(id),
    treinamento_id INT REFERENCES treinamento(id),
    data_solicitacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) CHECK (status IN ('pendente', 'aprovado', 'rejeitado')) NOT NULL,
    motivo_rejeicao TEXT,
    aprovado_por VARCHAR(100),
    validado_por_rh BOOLEAN DEFAULT FALSE,
    data_validacao_rh TIMESTAMP
);