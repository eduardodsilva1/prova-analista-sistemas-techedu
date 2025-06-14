# Documento de Requisitos � Sistema de Gest�o de Solicita��es de Treinamentos

## Atores Identificados
- **Colaborador**: Solicita treinamentos.
- **Gestor**: Aprova ou rejeita as solicita��es.
- **RH**: Valida as solicita��es aprovadas.

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