Feature: US050 - Reconocimiento a voluntarios destacados
  Como voluntario
  Quiero recibir reconocimiento dentro de la app si participé activamente en varias emergencias
  Para motivarme a seguir ayudando

  Scenario Outline: Escenario 1 - Asignación de puntos o insignias
    Given que he participado en "<numero_emergencias>" emergencias registradas
    When el sistema actualiza mi historial de participación
    Then recibo "<tipo_reconocimiento>" en la app
    And mi perfil se actualiza con el nuevo reconocimiento

    Examples:
      | numero_emergencias | tipo_reconocimiento     |
      | 3                  | Insignia "Colaborador"  |
      | 5                  | Insignia "Voluntario Activo" |

  Scenario Outline: Escenario 2 - Visualizar logros en el perfil
    Given que tengo logros registrados en mi perfil
    When accedo a la sección "Mis logros"
    Then veo la lista de insignias y puntos obtenidos
    And cada logro muestra el nombre "<nombre_logro>" y una breve descripción "<descripcion>"

    Examples:
      | nombre_logro           | descripcion                       |
      | Voluntario Activo      | Participaste en 5 emergencias     |
      | Héroe de la Comunidad  | Colaboraste en múltiples misiones |

  Scenario Outline: Escenario 3 - Compartir reconocimiento en redes sociales
    Given que he obtenido el logro "<nombre_logro>"
    When selecciono la opción "Compartir en redes"
    And elijo la red "<red_social>"
    Then se genera un mensaje con mi reconocimiento "<nombre_logro>"
    And puedo publicarlo en "<red_social>"

    Examples:
      | nombre_logro          | red_social |
      | Voluntario Activo     | Facebook   |
      | Héroe de la Comunidad | Instagram  |
