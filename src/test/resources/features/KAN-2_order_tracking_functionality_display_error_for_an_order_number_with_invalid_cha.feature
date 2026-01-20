Feature: Order Tracking Functionality

  Scenario: Display error for an order number with invalid characters
    Given User is on the order tracking page
    When User enters order number "ORD!@#$"
    And Clicks the 'Track Order' button
    Then The error message "Invalid order number format. Only alphanumeric characters are allowed." should be displayed
