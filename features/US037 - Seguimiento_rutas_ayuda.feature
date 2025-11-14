Feature: US037 - Seguimiento de rutas de ayuda
  Como voluntario
  Quiero ver rutas seguras y actualizadas
  Para entregar ayuda sin quedar atrapado en zonas inundadas

  Scenario Outline: Escenario 1 - Visualizar rutas seguras
    Given que accedo a la sección de rutas de ayuda
    When el sistema carga la ruta hacia "<destino>"
    Then veo el camino seguro marcado en el mapa

    Examples:
      | destino       |
      | Refugio A     |
      | Zona Sur      |

  Scenario Outline: Escenario 2 - Recibir alertas sobre bloqueo de ruta
    Given que estoy siguiendo una ruta hacia "<destino>"
    When una sección de la ruta se bloquea
    Then recibo una alerta indicando bloqueo en "<zona_bloqueada>"

    Examples:
      | destino   | zona_bloqueada |
      | Refugio A | Calle 21       |
      | Zona Sur  | Puente Norte   |
