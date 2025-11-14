Feature: US009 - Reporte de incidentes
  Como ciudadano
  Quiero reportar zonas inundadas
  Para ayudar a actualizar la información del mapa

  Scenario Outline: Escenario 1 - Envío correcto de reporte
    Given que accedo a la sección "Reportar incidente"
    And completo el formulario con una foto, ubicación y descripción "<descripcion>"
    When presiono el botón "Enviar reporte"
    Then el sistema valida que todos los campos obligatorios estén completos
    And el reporte se envía correctamente
    And recibo un mensaje de confirmación de envío

    Examples:
      | descripcion                 |
      | Calle inundada hasta la vereda |
      | Puente con agua al ras        |

  Scenario: Escenario 2 - Validación de campos obligatorios
    Given que estoy en la sección "Reportar incidente"
    And dejo algún campo obligatorio vacío
    When intento enviar el reporte
    Then el sistema muestra un mensaje indicando qué campos faltan
    And no permite enviar el reporte hasta completar la información

  Scenario: Escenario 3 - Revisión antes de publicación
    Given que he enviado un reporte de incidente
    When el sistema recibe el reporte
    Then el reporte queda marcado como "Pendiente de revisión"
    And solo se mostrará en el mapa después de ser revisado y aprobado por el equipo correspondiente
