Feature: US005 - Búsqueda manual de zonas
  Como ciudadano
  Quiero buscar manualmente distritos o regiones
  Para revisar su nivel de riesgo

  Scenario Outline: Escenario 1 - Búsqueda exitosa por nombre
    Given que estoy en la pantalla "Búsqueda de zonas"
    And existe el distrito o región "<zona>" en el sistema
    When escribo el nombre "<zona>" en el campo de búsqueda
    And confirmo la búsqueda
    Then se muestra el resultado con el nivel de riesgo correspondiente
    And el resultado se visualiza con el color de riesgo asociado

    Examples:
      | zona           |
      | Piura          |
      | Tumbes         |
      | Lima Metropolitana |

  Scenario Outline: Escenario 2 - Zona no encontrada
    Given que estoy en la pantalla "Búsqueda de zonas"
    And no existe el distrito o región "<zona>"
    When intento buscar "<zona>"
    Then se muestra un mensaje indicando que no se encontró la zona
    And se sugiere verificar el nombre o probar con otra región

    Examples:
      | zona      |
      | Zona X    |
      | Desconocida |
