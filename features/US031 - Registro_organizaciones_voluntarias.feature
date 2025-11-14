Feature: US031 - Registro de organizaciones voluntarias
  Como voluntario o miembro de una organización
  Quiero registrar mi grupo en la app
  Para ofrecer ayuda durante emergencias por inundaciones

  Scenario Outline: Escenario 1 - Registrar organización voluntaria
    Given que accedo al formulario de registro de organizaciones
    When ingreso el nombre "<nombre>", tipo de ayuda "<tipo_ayuda>" y zona de cobertura "<zona>"
    And envío el formulario
    Then la organización "<nombre>" queda registrada en el sistema
    And queda pendiente de validación por la autoridad local

    Examples:
      | nombre               | tipo_ayuda | zona         |
      | Brigada Norte        | rescate    | Zona Norte   |
      | Voluntarios Unidos   | alimentos  | Zona Centro  |

  Scenario Outline: Escenario 2 - Validación por parte de autoridad
    Given que la organización "<nombre>" está pendiente de revisión
    When la autoridad local aprueba el registro
    Then la organización queda validada y habilitada para operar en "<zona>"

    Examples:
      | nombre             | zona        |
      | Brigada Norte      | Zona Norte  |
      | Voluntarios Unidos | Zona Centro |
