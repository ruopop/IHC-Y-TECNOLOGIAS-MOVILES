Feature: US049 - Acceso a informes de misión
  Como voluntario
  Quiero acceder a los informes finales de cada misión
  Para conocer los resultados y aprendizajes del equipo

  Scenario Outline: Escenario 1 - Ver y descargar informes de misión
    Given que soy miembro del equipo "<equipo>"
    And accedo a la sección "Informes de misión"
    When selecciono el informe de la misión "<mision>"
    Then puedo ver el resumen del informe
    And tengo la opción de descargar el archivo en formato PDF

    Examples:
      | equipo          | mision                  |
      | Equipo Norte    | Rescate zona norte     |
      | Equipo Logística| Distribución alimentos |

  Scenario Outline: Escenario 2 - Contenido del informe
    Given que abro el informe de la misión "<mision>"
    When visualizo el contenido
    Then el informe incluye fotos, datos y estadísticas de la misión "<mision>"

    Examples:
      | mision                  |
      | Rescate zona norte     |
      | Distribución alimentos |

  Scenario Outline: Escenario 3 - Acceso restringido a miembros del equipo
    Given que intento acceder al informe de la misión "<mision>"
    And no soy miembro del equipo "<equipo>"
    When el sistema verifica mis permisos
    Then se me niega el acceso al informe
    And se muestra un mensaje indicando que el acceso está restringido

    Examples:
      | mision                  | equipo          |
      | Rescate zona norte     | Equipo Norte    |
      | Distribución alimentos | Equipo Logística|
