Feature: US011 - Activar modo de emergencia
  Como ciudadano
  Quiero activar un modo de emergencia que muestre contactos y rutas seguras
  Para usarlos cuando se detecta una alerta crítica

  Scenario: Activación manual del modo emergencia
    Given que he recibido una alerta crítica en la app
    And el botón "Modo emergencia" es visible en la pantalla
    When presiono el botón "Modo emergencia"
    Then se activa el modo emergencia
    And se muestran mis contactos de emergencia registrados
    And se muestran los refugios cercanos y rutas seguras hacia ellos

  Scenario: Acciones rápidas desde el modo emergencia
    Given que el modo emergencia está activado
    When selecciono la opción de llamar a un contacto de emergencia
    Then la app inicia una llamada al número seleccionado
    And cuando selecciono la opción de enviar mensaje SOS
    Then se envía un mensaje SOS al contacto elegido con mi ubicación actual
