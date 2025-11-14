Feature: US043 - Registro de personas asistidas
  Como voluntario
  Quiero registrar la cantidad de personas asistidas en cada zona
  Para tener control del impacto de la ayuda

  Scenario Outline: Escenario 1 - Registrar número de personas asistidas
    Given que accedo al formulario de registro de personas asistidas
    When ingreso la zona "<zona>" y el número de personas "<cantidad>"
    And adjunto la ubicación "<ubicacion>"
    Then el registro queda guardado en el panel de reportes

    Examples:
      | zona        | cantidad | ubicacion        |
      | Zona Norte  | 25       | -12.04,-77.06    |
      | Zona Centro | 40       | -12.05,-77.04    |

  Scenario Outline: Escenario 2 - Adjuntar evidencia opcional
    Given que estoy registrando personas asistidas en la zona "<zona>"
    When adjunto la foto "<foto>"
    Then la evidencia visual queda asociada al registro de esa zona

    Examples:
      | zona        | foto            |
      | Zona Norte  | asistidos1.jpg  |
      | Zona Centro | asistidos2.jpg  |
