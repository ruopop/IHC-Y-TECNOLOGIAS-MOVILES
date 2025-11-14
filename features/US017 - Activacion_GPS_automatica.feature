Feature: US017 - Activación de GPS automática
  Como ciudadano
  Quiero que la app me pida activar el GPS al iniciar
  Para recibir alertas precisas según mi ubicación actual

  Scenario 1: Solicitud automática de GPS al iniciar la app
    Given que abro la app por primera vez en mi dispositivo "<plataforma>"
    And el GPS del dispositivo está desactivado
    When la app inicia
    Then se muestra una solicitud para activar el GPS
    And se explica que es necesario para recibir alertas precisas

    Examples:
      | plataforma |
      | Android    |
      | iOS        |

  Scenario 2: Actualización periódica de ubicación
    Given que tengo el GPS activado y la app en funcionamiento
    When transcurre un intervalo de tiempo configurado
    Then la app actualiza mi ubicación actual en segundo plano
    And las alertas se basan en mi ubicación más reciente

    Examples:
      | intervalo_minutos |
      | 5                 |
      | 10                |
