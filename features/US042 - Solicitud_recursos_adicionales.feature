Feature: US042 - Solicitud de recursos adicionales
  Como voluntario
  Quiero solicitar recursos adicionales cuando los disponibles sean insuficientes
  Para poder continuar brindando ayuda

  Scenario Outline: Escenario 1 - Enviar solicitud de recursos
    Given que accedo al formulario de solicitud de recursos
    When registro el tipo de recurso "<recurso>", la cantidad "<cantidad>" y la urgencia "<urgencia>"
    And envío la solicitud
    Then se notifica automáticamente a la autoridad local con los datos registrados

    Examples:
      | recurso   | cantidad | urgencia   |
      | agua      | 50       | alta       |
      | medicinas | 20       | media      |

  Scenario Outline: Escenario 2 - Ver estado de la solicitud
    Given que ya envié una solicitud de recurso "<recurso>"
    When consulto el estado de la solicitud
    Then el sistema muestra el estado actual "<estado>"

    Examples:
      | recurso   | estado     |
      | agua      | pendiente  |
      | medicinas | enviado    |
