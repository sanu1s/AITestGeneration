Feature: Order Tracking Functionality

  Scenario: Display error when tracking with an empty order number
    Given User is on the order tracking page
    When User enters order number ""
    And Clicks the 'Track Order' button
    Then The error message "Order number cannot be empty." should be displayed
