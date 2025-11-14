Feature: US016 - Lenguaje accesible
  Como ciudadano
  Quiero que la app use un lenguaje simple y visual
  Para entender fácilmente las alertas y niveles de riesgo

  Scenario 1: Uso de lenguaje claro
    Given que recibo una alerta en la app
    When se muestra el mensaje de alerta
    Then el texto utiliza lenguaje claro, corto y directo
    And se evita el uso de tecnicismos innecesarios

    Examples:
      | tipo_alerta |
      | Inundación  |
      | Vientos fuertes |

  Scenario 2: Representación visual del riesgo
    Given que estoy en cualquier pantalla donde se muestre el nivel de riesgo
    When se presenta el nivel de riesgo actual
    Then se muestran íconos y colores para representar la gravedad del riesgo
    And el diseño es compatible con un modo de lectura fácil

    Examples:
      | nivel_riesgo |
      | Bajo         |
      | Alto         |
