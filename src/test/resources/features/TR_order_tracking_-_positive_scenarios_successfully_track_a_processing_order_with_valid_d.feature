Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track a processing order with valid details
    Given user is on the order tracking page
    When user enters order number "ORD67890"
    And user enters billing zip code "10001"
    And user clicks the "Track Order" button
    Then the order status should be displayed as "Processing"
