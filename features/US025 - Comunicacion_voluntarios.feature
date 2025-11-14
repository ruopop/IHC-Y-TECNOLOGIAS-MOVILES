Feature: US025 - Comunicación con voluntarios
  Como autoridad local
  Quiero comunicarme con los grupos de voluntarios registrados
  Para coordinar ayuda durante una emergencia

  Scenario Outline: Escenario 1 - Enviar mensajes a un grupo de voluntarios
    Given que accedo al panel de comunicación con voluntarios
    And aplico un filtro por distrito "<distrito>" y tipo de ayuda "<tipo_ayuda>"
    When escribo el mensaje "<mensaje>"
    And lo envío al grupo filtrado
    Then el mensaje queda registrado en el historial
    And los voluntarios del distrito "<distrito>" reciben la notificación

    Examples:
      | distrito    | tipo_ayuda   | mensaje                      |
      | Distrito A  | alimentos    | Llevar raciones a zona norte |
      | Distrito B  | rescate      | Coordinar rescate en puente  |

  Scenario Outline: Escenario 2 - Filtrar grupos de voluntarios
    Given que estoy en la sección de comunicación con voluntarios
    When aplico el filtro por tipo de ayuda "<tipo_ayuda>"
    Then solo se muestran los grupos que brindan ayuda de tipo "<tipo_ayuda>"

    Examples:
      | tipo_ayuda |
      | alimentos  |
      | rescate    |
      | salud      |
