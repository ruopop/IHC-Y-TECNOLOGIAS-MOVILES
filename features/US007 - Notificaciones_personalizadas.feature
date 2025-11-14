Feature: US007 - Notificaciones personalizadas
  Como ciudadano
  Quiero elegir qué tipos de alertas recibir
  Para evitar notificaciones innecesarias

  Scenario Outline: Escenario 1 - Configurar tipos de alerta
    Given que accedo a la sección "Configuración de notificaciones"
    When selecciono los tipos de alerta "<tipos>" que deseo recibir
    And guardo los cambios
    Then las preferencias se guardan en mi perfil de usuario

    Examples:
      | tipos           |
      | baja, media     |
      | media, alta     |
      | solo alta       |

  Scenario Outline: Escenario 2 - Envío de notificación según preferencias
    Given que tengo configuradas notificaciones solo para riesgo "<tipo_configurado>"
    And se genera una alerta de riesgo "<tipo_alerta>"
    When el sistema evalúa si debe notificarme
    Then solo debo recibir la notificación si el tipo de alerta coincide con mis preferencias

    Examples:
      | tipo_configurado | tipo_alerta |
      | alta             | alta        |
      | media            | baja        |
      | baja             | media       |
