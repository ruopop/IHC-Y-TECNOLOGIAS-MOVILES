Feature: US034 - Comunicación directa con la autoridad
  Como voluntario
  Quiero comunicarme con la autoridad local
  Para recibir instrucciones o informar necesidades nuevas

  Scenario Outline: Escenario 1 - Enviar mensaje a la autoridad
    Given que accedo al chat con la autoridad
    When escribo el mensaje "<mensaje>"
    And lo envío
    Then el sistema registra el mensaje
    And la autoridad recibe la notificación

    Examples:
      | mensaje                        |
      | Necesitamos más agua potable   |
      | Hay personas atrapadas al sur  |

  Scenario Outline: Escenario 2 - Adjuntar fotos o ubicaciones
    Given que estoy en el chat con la autoridad
    When adjunto la foto "<foto>" o la ubicación "<ubicacion>"
    Then el archivo queda enviado correctamente

    Examples:
      | foto         | ubicacion       |
      | evidencia.jpg| -12.03,-77.04   |
      | puente.jpg   | -12.06,-77.01   |
