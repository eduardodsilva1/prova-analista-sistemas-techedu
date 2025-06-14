# Documento de Requisitos – Sistema de Gestão de Solicitações de Treinamentos

## Atores Identificados
- **Colaborador**: Solicita treinamentos.
- **Gestor**: Aprova ou rejeita as solicitações.
- **RH**: Valida as solicitações aprovadas.

## Requisitos Funcionais
- 1: Cadastrar uma solicitação de treinamento.
- 2: Permitir que o gestor aprove ou rejeite solicitações.
- 3: Permitir que o gestor informe o motivo da rejeição.
- 4: Permitir que o RH valide as solicitações aprovadas.
- 5: Permitir a consulta do status das solicitações.

## Requisitos Não Funcionais
- 1: O sistema deve ser acessível via web.
- 2: O sistema deve ser responsivo, funcionando em dispositivos móveis.
- 3: O sistema deve utilizar um banco de dados relacional (PostgreSQL).
- 4: O sistema deve garantir a segurança dos dados dos usuários.
- 5: As operações críticas devem ter histórico para usuários "master".
- 6: O sistema deve suportar um aumento no número de usuários.