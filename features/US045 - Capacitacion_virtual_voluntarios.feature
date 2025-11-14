Feature: US045 - Capacitación virtual para voluntarios
  Como voluntario
  Quiero acceder a capacitaciones virtuales sobre primeros auxilios y protocolos
  Para actuar correctamente durante emergencias

  Scenario Outline: Escenario 1 - Acceder a cursos virtuales
    Given que accedo a la sección "Capacitaciones"
    When selecciono el curso "<curso>"
    Then puedo ver el contenido en video o material descargable

    Examples:
      | curso                    |
      | Primeros auxilios básicos|
      | Manejo de inundaciones   |

  Scenario Outline: Escenario 2 - Completar capacitación y obtener certificado
    Given que estoy en el curso "<curso>"
    When completo todas las lecciones del curso
    Then el sistema genera un certificado virtual para el curso "<curso>"

    Examples:
      | curso                    |
      | Primeros auxilios básicos|
      | Manejo de inundaciones   |
