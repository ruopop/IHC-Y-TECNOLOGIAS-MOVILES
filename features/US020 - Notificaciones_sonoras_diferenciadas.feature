Feature: US020 - Notificaciones sonoras diferenciadas
  Como ciudadano
  Quiero que cada nivel de alerta tenga un sonido distinto
  Para reconocer la gravedad del riesgo sin mirar la pantalla

  Scenario 1: Sonidos distintos por nivel de alerta
    Given que tengo las notificaciones sonoras activadas
    When el sistema envía una alerta de nivel "<nivel_riesgo>"
    Then se reproduce un sonido específico asociado al nivel "<nivel_riesgo>"

    Examples:
      | nivel_riesgo |
      | bajo         |
      | medio        |
      | alto         |

  Scenario 2: Activar o desactivar sonidos
    Given que accedo a la configuración de notificaciones
    When desactivo los sonidos de alerta
    Then las futuras alertas solo se notificarán por vibración o visualmente
    And cuando reactivo los sonidos
    Then las alertas vuelven a reproducir el sonido correspondiente

    Examples:
      | accion      |
      | desactivar  |
      | activar     |

  Scenario 3: Compatibilidad con modo vibración
    Given que mi dispositivo está en modo vibración
    And las notificaciones sonoras están activadas en la app
    When recibo una alerta
    Then el dispositivo vibra usando un patrón acorde al nivel de alerta
    And el comportamiento es compatible con las políticas de sonido del sistema operativo

    Examples:
      | nivel_riesgo |
      | bajo         |
      | alto         |
