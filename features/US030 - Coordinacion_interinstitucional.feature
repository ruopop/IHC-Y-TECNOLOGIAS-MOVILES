Feature: US030 - Coordinación interinstitucional
  Como autoridad local
  Quiero compartir información con otras municipalidades o instituciones
  Para coordinar acciones conjuntas ante una emergencia

  Scenario Outline: Escenario 1 - Compartir información mediante enlace seguro
    Given que accedo a la sección de coordinación interinstitucional
    And selecciono los reportes del distrito "<distrito>"
    When genero un enlace seguro para compartir
    Then el enlace permite acceso restringido solo a las instituciones autorizadas para el distrito "<distrito>"

    Examples:
      | distrito    |
      | Distrito A  |
      | Distrito B  |

  Scenario Outline: Escenario 2 - Historial de acciones compartidas
    Given que he compartido información con la institución "<institucion>"
    When accedo al historial de coordinación
    Then veo un registro de las acciones compartidas con "<institucion>" incluyendo fecha y tipo de información

    Examples:
      | institucion               |
      | Municipalidad Provincial  |
      | Defensa Civil Regional    |
