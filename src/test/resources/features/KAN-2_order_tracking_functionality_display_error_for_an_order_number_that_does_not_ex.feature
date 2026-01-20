Feature: Order Tracking Functionality

  Scenario: Display error for an order number that does not exist
    Given User is on the order tracking page
    When User enters order number "ORD99999"
    And Clicks the 'Track Order' button
    Then The error message "Order ORD99999 not found." should be displayed
