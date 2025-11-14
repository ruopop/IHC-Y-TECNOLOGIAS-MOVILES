Feature: US046 - Confirmación de llegada al punto de ayuda
  Como voluntario
  Quiero confirmar mi llegada al punto asignado
  Para que la autoridad y otros equipos sepan que estoy en el lugar

  Scenario Outline: Escenario 1 - Confirmar llegada al punto
    Given que tengo asignado el punto de ayuda "<punto>"
    When presiono el botón "He llegado"
    Then el sistema registra mi llegada al punto "<punto>"
    And guarda mi ubicación GPS actual "<ubicacion>"

    Examples:
      | punto            | ubicacion      |
      | Refugio A        | -12.03,-77.02  |
      | Punto Sur        | -12.07,-77.08  |

  Scenario Outline: Escenario 2 - Notificación al panel de coordinación
    Given que confirmé mi llegada al punto "<punto>"
    When el sistema actualiza el registro
    Then la autoridad ve en el panel de coordinación que estoy presente en "<punto>"

    Examples:
      | punto       |
      | Refugio A   |
      | Punto Sur   |
