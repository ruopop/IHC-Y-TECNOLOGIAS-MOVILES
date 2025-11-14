# File: US001_Alerta_inmediata_inundacion.feature
Feature: US001 - Alerta inmediata de inundación para ciudadanos
  Como ciudadano
  Quiero recibir una alerta inmediata en mi celular cuando exista peligro en mi zona
  Para poder evacuar o tomar precauciones a tiempo

  Scenario Outline: Escenario 1 - Alerta enviada según ubicación y nivel de riesgo
    Given que el usuario tiene activada la ubicación en su celular
    And se detecta un nivel de riesgo "<nivel_riesgo>" en su zona
    And la app se encuentra "<estado_app>"
    When el sistema genera una alerta de inundación
    Then el usuario recibe una notificación automática en su celular
    And la alerta muestra el nivel de riesgo "<nivel_riesgo>"
    And la alerta incluye recomendaciones y un enlace al listado de refugios cercanos

    Examples:
      | nivel_riesgo | estado_app  |
      | verde        | abierta     |
      | amarillo     | minimizada  |
      | rojo         | cerrada     |

  Scenario Outline: Escenario 2 - Usuario fuera de zona de riesgo
    Given que el usuario se encuentra en una zona sin peligro de inundación
    When el sistema evalúa el riesgo en su ubicación
    Then no se envía ninguna alerta de inundación
    And el usuario no recibe notificaciones innecesarias
