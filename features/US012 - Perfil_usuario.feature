Feature: US012 - Perfil de usuario
  Como ciudadano
  Quiero registrar mis datos personales y dirección
  Para recibir alertas personalizadas

  Scenario: Registro inicial de perfil
    Given que accedo a la sección "Perfil de usuario"
    When completo el formulario con nombre, dirección y teléfono
    And guardo los datos
    Then el sistema almacena mi información personal
    And mi perfil queda registrado correctamente

  Scenario: Actualización de datos de perfil
    Given que ya tengo un perfil registrado
    And accedo a la sección "Perfil de usuario"
    When modifico mi dirección o teléfono
    And guardo los cambios
    Then el sistema actualiza mi información
    And las futuras alertas se adaptan a mi nueva ubicación registrada
