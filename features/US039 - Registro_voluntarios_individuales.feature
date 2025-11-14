Feature: US039 - Registro de voluntarios individuales
  Como voluntario independiente
  Quiero registrarme personalmente
  Para integrarme a un equipo o colaborar en una zona libre

  Scenario Outline: Escenario 1 - Registrar voluntario individual
    Given que accedo al formulario de registro personal
    When ingreso mis datos "<nombre>" y habilidades "<habilidades>"
    Then quedo registrado como voluntario independiente

    Examples:
      | nombre      | habilidades            |
      | Juan Pérez  | primeros auxilios      |
      | Ana Torres  | logística y transporte |

  Scenario Outline: Escenario 2 - Unirse a organización activa
    Given que estoy registrado como voluntario independiente
    When selecciono unirme a la organización "<organizacion>"
    Then quedo asociado al grupo seleccionado

    Examples:
      | organizacion        |
      | Brigada Norte       |
      | Voluntarios Unidos  |
