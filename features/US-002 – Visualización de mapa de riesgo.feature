Feature: US002 - Visualización de mapa de riesgo
  Como ciudadano
  Quiero ver un mapa con los niveles de riesgo de inundación en mi zona
  Para identificar áreas seguras

  Scenario Outline: Escenario 1 - Mapa con niveles de riesgo por color
    Given que accedo a la pantalla "Mapa de riesgo"
    When el sistema carga la información de riesgo de inundación
    Then se muestra un mapa con colores según el nivel de riesgo
    And las zonas de riesgo "<nivel_riesgo>" se visualizan con el color correspondiente

    Examples:
      | nivel_riesgo |
      | bajo         |
      | medio        |
      | alto         |

  Scenario: Escenario 2 - Actualización en tiempo real
    Given que estoy visualizando el mapa de riesgo
    And cambia el nivel de riesgo en alguna zona
    When el sistema recibe la nueva información
    Then el mapa se actualiza automáticamente en tiempo real
    And los colores de las zonas afectadas se actualizan sin recargar la pantalla

  Scenario: Escenario 3 - Navegación en el mapa
    Given que estoy en la pantalla "Mapa de riesgo"
    When hago zoom sobre una zona del mapa
    Then puedo acercarme para ver más detalle
    And puedo moverme horizontal y verticalmente para revisar otras regiones
