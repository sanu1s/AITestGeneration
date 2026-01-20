Feature: Order Tracking Functionality

  Scenario: Display error for an order number that is too short
    Given User is on the order tracking page
    When User enters order number "ORD12"
    And Clicks the 'Track Order' button
    Then The error message "Order number must be 8 characters long." should be displayed
