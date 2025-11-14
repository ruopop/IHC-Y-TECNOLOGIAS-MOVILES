Feature: US019 - Centro de ayuda
  Como ciudadano
  Quiero acceder a un centro de ayuda dentro de la app
  Para resolver dudas sobre alertas, refugios o configuraciones

  Scenario 1: Acceso a preguntas frecuentes (FAQ)
    Given que accedo a la sección "Centro de ayuda"
    When selecciono la opción "Preguntas frecuentes"
    Then se muestra una lista de preguntas y respuestas organizadas por tema
    And puedo leer información sobre alertas, refugios y configuraciones

    Examples:
      | categoria |
      | Alertas   |
      | Refugios  |

  Scenario 2: Búsqueda por palabras clave
    Given que estoy en la sección "Centro de ayuda"
    When escribo una palabra clave en el buscador
    Then se filtran las preguntas frecuentes relacionadas con esa palabra
    And se muestran solo los resultados relevantes

    Examples:
      | palabra_clave |
      | agua          |
      | refugio       |

  Scenario 3: Opciones de contacto
    Given que estoy en la sección "Centro de ayuda"
    When selecciono la opción de contacto por chat o correo
    Then se muestran las instrucciones o el formulario correspondiente
    And puedo enviar mi consulta a soporte desde la app

    Examples:
      | tipo_contacto |
      | Chat          |
      | Correo        |
