Feature: Order Tracking System - Negative Scenarios

  Scenario: Display error when order number field is empty
    Given User is on the order tracking page
    When User enters order number ""
    And Clicks on the 'Track Order' button
    Then The error message should display "Order Number cannot be empty."
