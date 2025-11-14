Feature: US021 - Emisión de alertas oficiales
  Como autoridad local
  Quiero emitir alertas oficiales desde el panel de control
  Para informar rápidamente a los ciudadanos en riesgo

  Scenario Outline: Escenario 1 - Crear y enviar una alerta oficial
    Given que accedo al panel de control de alertas
    And selecciono la zona "<zona>"
    When creo una alerta indicando el tipo de riesgo "<tipo_riesgo>", nivel "<nivel>" y duración "<duracion>"
    Then el sistema valida los datos ingresados
    And la alerta se envía a todos los usuarios dentro de la zona "<zona>"

    Examples:
      | zona        | tipo_riesgo    | nivel | duracion   |
      | Distrito A  | inundación     | alto  | 2 horas    |
      | Distrito B  | desborde río   | medio | 45 minutos |

  Scenario Outline: Escenario 2 - Validación antes de publicación
    Given que estoy creando una alerta oficial para la zona "<zona>"
    When intento publicar la alerta con el nivel "<nivel>"
    Then el sistema muestra una confirmación de revisión
    And solo permite publicar si la información es correcta para el nivel "<nivel>"

    Examples:
      | zona        | nivel |
      | Distrito A  | alto  |
      | Distrito B  | medio |
