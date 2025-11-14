Feature: US038 - Confirmación de entrega de ayuda
  Como voluntario
  Quiero marcar las entregas completadas
  Para informar que la asistencia llegó correctamente

  Scenario Outline: Escenario 1 - Confirmar entrega
    Given que accedo a la sección de entregas
    When marco la entrega como completada para "<destino>"
    Then el sistema actualiza el estado de la entrega
    And registra la hora de finalización

    Examples:
      | destino    |
      | Refugio A  |
      | Refugio B  |

  Scenario Outline: Escenario 2 - Adjuntar evidencia
    Given que confirmo la entrega a "<destino>"
    When adjunto la foto "<foto>"
    Then la evidencia queda guardada en el registro

    Examples:
      | destino   | foto         |
      | Refugio A | entregaA.jpg |
      | Refugio B | entregaB.jpg |
