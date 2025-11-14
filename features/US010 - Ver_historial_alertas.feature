Feature: US010 - Ver historial de alertas
  Como ciudadano
  Quiero revisar las alertas anteriores en mi zona
  Para entender la frecuencia del riesgo

  Scenario: Historial ordenado cronológicamente
    Given que accedo a la sección "Historial de alertas"
    When el sistema carga las alertas anteriores de mi zona
    Then se muestra una lista de alertas ordenadas de la más reciente a la más antigua
    And cada alerta muestra la fecha, nivel de riesgo y duración

  Scenario Outline: Filtro por tipo de riesgo
    Given que estoy en la sección "Historial de alertas"
    And hay alertas registradas de diferentes niveles de riesgo
    When aplico el filtro por tipo de riesgo "<tipo_riesgo>"
    Then solo se muestran las alertas del tipo de riesgo "<tipo_riesgo>"

    Examples:
      | tipo_riesgo |
      | bajo        |
      | medio       |
      | alto        |
