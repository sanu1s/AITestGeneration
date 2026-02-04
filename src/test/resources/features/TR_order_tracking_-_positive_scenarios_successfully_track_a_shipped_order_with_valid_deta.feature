Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track a shipped order with valid details
    Given user is on the order tracking page
    When user enters order number "ORD12345"
    And user enters billing zip code "90210"
    And user clicks the "Track Order" button
    Then the order status should be displayed as "Shipped"
