Feature: Order Status Search - Positive Functionality

  Scenario: Successful order status retrieval for a valid Order ID
    Given User is on the Order Status tracking page
    When User selects "Order ID" as search type
    And User enters order number "12345"
    And User clicks the "Search" button
    Then The order details should be displayed in the "orderDetails" section
