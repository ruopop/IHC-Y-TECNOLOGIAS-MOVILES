Feature: US006 - Compartir alertas
  Como ciudadano
  Quiero compartir las alertas con mi familia
  Para mantenerlos informados sobre posibles inundaciones

  Scenario Outline: Escenario 1 - Compartir alerta desde la app
    Given que recibo una alerta de inundación en la app
    When presiono el botón "Compartir"
    And selecciono el canal "<canal>"
    Then se genera un mensaje con un enlace a la alerta
    And el mensaje se envía a través de "<canal>"

    Examples:
      | canal        |
      | WhatsApp     |
      | SMS          |
      | Redes sociales |

  Scenario: Escenario 2 - Apertura de la alerta desde el enlace
    Given que un familiar recibe el enlace de una alerta compartida
    When toca el enlace en su dispositivo
    Then se abre directamente la pantalla de detalle de la alerta en la app o en el navegador
    And se muestra el nivel de riesgo y las recomendaciones

  Scenario Outline: Escenario 3 - Compatibilidad en Android e iOS
    Given que el usuario utiliza un dispositivo "<plataforma>"
    When abre una alerta o comparte la notificación
    Then la funcionalidad de compartir debe estar disponible
    And el enlace debe abrir correctamente la alerta

    Examples:
      | plataforma |
      | Android    |
      | iOS        |
