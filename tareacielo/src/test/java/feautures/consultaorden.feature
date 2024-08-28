Feature: Consultar una orden

  @consultarorden
  Scenario: Recuperar una orden existente
    Given tengo un ID de orden existente <orderId>
    When envío una solicitud GET a "/store/order/<orderId>"
    Then el código de estado de la respuesta debe ser 200
    And el cuerpo de la respuesta debe contener los detalles correctos de la orden
