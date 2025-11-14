Feature: US008 - Recomendaciones de seguridad
  Como ciudadano
  Quiero acceder a recomendaciones de seguridad
  Para saber qué hacer antes, durante y después de una inundación

  Scenario: Escenario 1 - Secciones por etapa de la inundación
    Given que accedo a la sección "Recomendaciones de seguridad"
    When se cargan las recomendaciones
    Then se muestran secciones organizadas por etapas: "Antes", "Durante" y "Después"
    And cada sección contiene textos cortos, íconos y gráficos explicativos

  Scenario: Escenario 2 - Acceso sin conexión a internet
    Given que previamente abrí la sección "Recomendaciones de seguridad" con conexión
    And la información quedó almacenada en el dispositivo
    When pierdo la conexión a internet
    Then aún puedo acceder a las recomendaciones desde la app
    And puedo navegar entre las secciones "Antes", "Durante" y "Después" sin errores
