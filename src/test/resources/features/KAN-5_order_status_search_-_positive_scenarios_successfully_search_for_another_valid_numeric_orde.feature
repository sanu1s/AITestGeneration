Feature: Order Status Search - Positive Scenarios

  Scenario: Successfully search for another valid numeric Order ID
    Given User is on the Order Tracking page
    When User selects "Order ID" as search type
    And User enters order ID "98765"
    And User clicks the "Search" button
    Then The order details for "98765" should be displayed
