# Documento de Requisitos � Sistema de Gest�o de Solicita��es de Treinamentos

## Atores Identificados
- Colaborador: Solicita treinamentos.
- Gestor: Aprova ou rejeita as solicita��es.
- RH: Valida as solicita��es aprovadas.

## Requisitos Funcionais
- 1: Cadastrar uma solicita��o de treinamento.
- 2: Permitir que o gestor aprove ou rejeite solicita��es.
- 3: Permitir que o gestor informe o motivo da rejei��o.
- 4: Permitir que o RH valide as solicita��es aprovadas.
- 5: Permitir a consulta do status das solicita��es.

## Requisitos N�o Funcionais
- 1: O sistema deve ser acess�vel via web.
- 2: O sistema deve ser responsivo, funcionando em dispositivos m�veis.
- 3: O sistema deve utilizar um banco de dados relacional (PostgreSQL).
- 4: O sistema deve garantir a seguran�a dos dados dos usu�rios.
- 5: As opera��es cr�ticas devem ter hist�rico para usu�rios "master".
- 6: O sistema deve suportar um aumento no n�mero de usu�rios.

## Hist�rias de Usu�rio com Crit�rios de Aceita��o

### Hist�ria de Usu�rio 1 � Solicita��o de Treinamento
Como: colaborador  
Quero: cadastrar uma solicita��o de treinamento  
Para que: o gestor possa analisar e aprovar ou rejeitar

Crit�rios de Aceita��o:
- O sistema deve permitir selecionar o tipo de treinamento e preencher os dados necess�rios.
- A solicita��o deve ser salva no banco de dados com status "Pendente".
- O colaborador deve visualizar a solicita��o em uma lista pessoal.

---

### Hist�ria de Usu�rio 2 � Aprova��o ou Rejei��o pelo Gestor
Como: gestor  
Quero: aprovar ou rejeitar solicita��es de treinamento  
Para que: apenas treinamentos relevantes sigam para valida��o do RH

Crit�rios de Aceita��o:
- O gestor deve visualizar todas as solicita��es pendentes dos colaboradores sob sua responsabilidade.
- Ao rejeitar, deve ser obrigat�rio preencher um campo com o motivo.
- O status da solicita��o deve ser atualizado para "Aprovado" ou "Rejeitado" e vis�vel para o colaborador.

---

### Hist�ria de Usu�rio 3 � Valida��o pelo RH
Como: membro do RH  
Quero: validar as solicita��es aprovadas pelo gestor  
Para que: o processo de treinamento seja oficializado e encaminhado

Crit�rios de Aceita��o:
- O RH deve visualizar apenas as solicita��es aprovadas.
- O sistema deve registrar a data e o respons�vel pela valida��o.
- O status final deve ser alterado para "Validado".

---

### Hist�ria de Usu�rio 4 � Consulta de Status
Como: colaborador  
Quero: consultar o status da minha solicita��o  
Para que: eu saiba em que etapa do processo ela se encontra

Crit�rios de Aceita��o:
- O colaborador deve visualizar uma lista com o status= "Pendente", "Aprovado", "Rejeitado", ou "Validado".
- Se rejeitado, o motivo deve estar vis�vel.