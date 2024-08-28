Feature: Crear una orden

  @crearorden
  Scenario: Crear una nueva orden
    Given tengo un payload de orden válido
    When envío una solicitud POST a "/store/order"
    Then el código de estado de la respuesta debe ser 200
    And el cuerpo de la respuesta debe contener los detalles de la orden
