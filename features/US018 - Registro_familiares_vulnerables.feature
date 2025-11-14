Feature: US018 - Registro de familiares vulnerables
  Como ciudadano
  Quiero registrar a mis familiares mayores o niños
  Para recibir alertas adicionales que los protejan

  Scenario 1: Registro de un familiar vulnerable
    Given que accedo a la sección "Familiares vulnerables"
    When completo el formulario con nombre, relación y dirección del familiar
    And guardo la información
    Then el familiar queda registrado en la app
    And su dirección queda asociada a mi perfil para el envío de alertas

    Examples:
      | relacion | direccion          |
      | Abuelo   | Calle 123, Piura   |
      | Hijo     | Av. Central, Lima  |

  Scenario 2: Envío de alertas duplicadas
    Given que tengo familiares vulnerables registrados
    And se detecta un riesgo de inundación en la zona "<zona_familiar>"
    When el sistema genera alertas
    Then se envía una alerta para mi ubicación
    And se envía una alerta adicional asociada a la zona "<zona_familiar>"

    Examples:
      | zona_familiar |
      | Casa abuelos  |
      | Escuela niños |
