Feature: US023 - Registro de refugios disponibles
  Como autoridad local
  Quiero registrar y actualizar los refugios disponibles en mi distrito
  Para que los ciudadanos sepan a dónde acudir

  Scenario Outline: Escenario 1 - Registrar un nuevo refugio
    Given que accedo al formulario de refugios
    When completo el nombre "<nombre>", la dirección "<direccion>" y la capacidad "<capacidad>"
    And guardo la información
    Then el refugio "<nombre>" queda registrado como activo en el sistema

    Examples:
      | nombre                 | direccion             | capacidad |
      | Refugio Municipal A    | Calle 123, Distrito A | 150       |
      | Colegio Seguro B       | Av. Central, Dist. B | 300       |

  Scenario Outline: Escenario 2 - Actualizar estado del refugio
    Given que el refugio "<nombre>" ya está registrado
    When cambio su estado a "<estado>"
    Then el sistema actualiza el estado del refugio
    And los ciudadanos ven el estado "<estado>" en la app

    Examples:
      | nombre              | estado |
      | Refugio Municipal A | lleno  |
      | Colegio Seguro B    | activo |
