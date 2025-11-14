Feature: US014 - Visualización de rutas seguras
  Como ciudadano
  Quiero ver rutas seguras hacia los refugios más cercanos
  Para evacuar rápidamente

  Scenario: Mapa con rutas seguras
    Given que tengo activada la ubicación en mi dispositivo
    And accedo a la sección "Rutas seguras"
    When el sistema calcula las rutas hacia los refugios más cercanos
    Then se muestra un mapa con las rutas seguras marcadas en color verde
    And se indica el refugio de destino para cada ruta

  Scenario Outline: Tiempo estimado según ruta
    Given que estoy visualizando una ruta segura hacia un refugio
    When se completa el cálculo de la ruta
    Then se muestra el tiempo estimado de llegada "<tiempo_estimado>"

    Examples:
      | tiempo_estimado |
      | 5 minutos       |
      | 12 minutos      |
      | 20 minutos      |
