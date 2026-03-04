Feature: Order Status Search - Positive Scenarios

  Scenario: Successfully search for a valid numeric Order ID
    Given User is on the Order Tracking page
    When User selects "Order ID" as search type
    And User enters order ID "12345"
    And User clicks the "Search" button
    Then The order details for "12345" should be displayed
