Feature: US013 - Acceso sin conexión
  Como ciudadano
  Quiero poder acceder a información básica y recomendaciones sin internet
  Para estar preparado durante una emergencia

  Scenario: Activación automática del modo offline
    Given que abrí la app con conexión anteriormente
    And la app descargó el contenido esencial
    When la app detecta que no tengo conexión a internet
    Then se activa el modo offline
    And puedo acceder a información básica y recomendaciones de seguridad

  Scenario: Sincronización al reconectarse
    Given que estoy usando la app en modo offline
    And se han generado datos o registros locales
    When recupero la conexión a internet
    Then la app sincroniza automáticamente la información pendiente con el servidor
