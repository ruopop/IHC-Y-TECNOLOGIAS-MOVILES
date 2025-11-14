Feature: US022 - Actualización de mapa de riesgo
  Como autoridad local
  Quiero actualizar el mapa de riesgo con información reciente
  Para mantener a la población informada

  Scenario Outline: Escenario 1 - Editar niveles de riesgo en el mapa
    Given que accedo al panel de edición del mapa de riesgo
    And selecciono la zona "<zona>"
    When cambio su nivel de riesgo actual a "<nuevo_nivel>"
    Then el sistema guarda la modificación
    And se genera un registro en el historial de cambios para la zona "<zona>"

    Examples:
      | zona        | nuevo_nivel |
      | Distrito A  | alto        |
      | Distrito B  | medio       |

  Scenario Outline: Escenario 2 - Actualización en tiempo real
    Given que se actualizó el nivel de riesgo de la zona "<zona>" a "<nuevo_nivel>"
    When los ciudadanos visualizan el mapa de riesgo
    Then ven el cambio reflejado en tiempo real
    And el color del mapa corresponde al nivel "<nuevo_nivel>"

    Examples:
      | zona        | nuevo_nivel |
      | Distrito A  | alto        |
      | Distrito B  | bajo        |
