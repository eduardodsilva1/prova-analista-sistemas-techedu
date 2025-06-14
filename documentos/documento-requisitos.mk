# Documento de Requisitos – Sistema de Gestão de Solicitações de Treinamentos

## Atores Identificados
- Colaborador: Solicita treinamentos.
- Gestor: Aprova ou rejeita as solicitações.
- RH: Valida as solicitações aprovadas.

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

## Histórias de Usuário com Critérios de Aceitação

### História de Usuário 1 – Solicitação de Treinamento
Como: colaborador  
Quero: cadastrar uma solicitação de treinamento  
Para que: o gestor possa analisar e aprovar ou rejeitar

Critérios de Aceitação:
- O sistema deve permitir selecionar o tipo de treinamento e preencher os dados necessários.
- A solicitação deve ser salva no banco de dados com status "Pendente".
- O colaborador deve visualizar a solicitação em uma lista pessoal.

---

### História de Usuário 2 – Aprovação ou Rejeição pelo Gestor
Como: gestor  
Quero: aprovar ou rejeitar solicitações de treinamento  
Para que: apenas treinamentos relevantes sigam para validação do RH

Critérios de Aceitação:
- O gestor deve visualizar todas as solicitações pendentes dos colaboradores sob sua responsabilidade.
- Ao rejeitar, deve ser obrigatório preencher um campo com o motivo.
- O status da solicitação deve ser atualizado para "Aprovado" ou "Rejeitado" e visível para o colaborador.

---

### História de Usuário 3 – Validação pelo RH
Como: membro do RH  
Quero: validar as solicitações aprovadas pelo gestor  
Para que: o processo de treinamento seja oficializado e encaminhado

Critérios de Aceitação:
- O RH deve visualizar apenas as solicitações aprovadas.
- O sistema deve registrar a data e o responsável pela validação.
- O status final deve ser alterado para "Validado".

---

### História de Usuário 4 – Consulta de Status
Como: colaborador  
Quero: consultar o status da minha solicitação  
Para que: eu saiba em que etapa do processo ela se encontra

Critérios de Aceitação:
- O colaborador deve visualizar uma lista com o status= "Pendente", "Aprovado", "Rejeitado", ou "Validado".
- Se rejeitado, o motivo deve estar visível.