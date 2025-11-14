Feature: US015 - Confirmación de seguridad personal
  Como ciudadano
  Quiero marcarme como "a salvo"
  Para que mis familiares sepan que estoy bien durante una inundación

  Scenario 1: Marcar estado como "Estoy a salvo"
    Given que he recibido una alerta de inundación reciente
    And el botón "Estoy a salvo" está disponible en la pantalla
    When presiono el botón "Estoy a salvo"
    Then mi estado se marca como "a salvo" en el sistema
    And se actualiza mi perfil para indicar que estoy a salvo

  Scenario 2: Notificación a contactos guardados
    Given que he presionado el botón "Estoy a salvo"
    And tengo contactos registrados en la app
    When se procesa mi confirmación de seguridad
    Then se envía una notificación automática a mis contactos guardados
    And la notificación indica que estoy a salvo y la hora de la confirmación

    Examples:
      | contactos_registrados |
      | 2                     |
      | 5                     |
