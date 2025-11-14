Feature: US028 - Reporte de daños post-inundación
  Como autoridad local
  Quiero registrar daños y zonas críticas después de una inundación
  Para planificar la recuperación

  Scenario Outline: Escenario 1 - Registrar daños en una zona
    Given que accedo al formulario de daños post-inundación
    When adjunto fotos "<fotos>", coordenadas "<coordenadas>" y la descripción "<descripcion>"
    And guardo el reporte
    Then el reporte de daños para la zona "<coordenadas>" queda almacenado en el sistema

    Examples:
      | fotos        | coordenadas     | descripcion                 |
      | foto1.jpg    | -12.04,-77.05   | Daños en viviendas          |
      | foto2.jpg    | -12.05,-77.06   | Puente afectado parcialmente|

  Scenario Outline: Escenario 2 - Generación automática de informe
    Given que existen múltiples reportes de daños registrados entre "<fecha_inicio>" y "<fecha_fin>"
    When el sistema procesa la información
    Then se genera un informe automático con el resumen de daños entre "<fecha_inicio>" y "<fecha_fin>"

    Examples:
      | fecha_inicio | fecha_fin  |
      | 2025-02-01   | 2025-02-05 |
      | 2025-03-10   | 2025-03-12 |
