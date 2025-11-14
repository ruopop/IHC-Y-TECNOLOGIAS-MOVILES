Feature: US048 - Seguimiento de estado emocional
  Como voluntario
  Quiero registrar mi estado emocional tras la emergencia
  Para recibir apoyo si fue una experiencia difícil

  Scenario Outline: Escenario 1 - Registrar estado emocional
    Given que accedo a la sección de bienestar emocional
    When selecciono mi estado actual como "<estado_emocional>"
    And respondo un breve cuestionario "<respuesta>"
    Then el sistema guarda mi registro de estado emocional

    Examples:
      | estado_emocional | respuesta                    |
      | estable          | Me siento cansado pero bien  |
      | afectado         | Me siento abrumado           |

  Scenario Outline: Escenario 2 - Solicitar apoyo psicológico
    Given que registré mi estado emocional como "<estado_emocional>"
    When el sistema detecta que necesito apoyo
    And selecciono la opción para contactar a un profesional
    Then se abre un canal de contacto con un psicólogo voluntario

    Examples:
      | estado_emocional |
      | afectado         |
      | muy afectado     |
