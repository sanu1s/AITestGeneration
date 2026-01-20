Feature: Order Tracking Validations

  Scenario: Display error for an order number that is too short
    Given User is on the order tracking page
    When User enters order number "ORD1"
    And Clicks the "Track Order" button
    Then An error message "Order number is too short" should be displayed
