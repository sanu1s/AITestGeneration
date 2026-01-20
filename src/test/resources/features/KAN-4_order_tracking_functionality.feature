Feature: Order Tracking Functionality

  Scenario: Attempt to track an order with mixed numeric and non-numeric characters
    Given User is on the order tracking page
    When User enters order number "123ABC456DEF"
    And Clicks the "Track Order" button
    Then An error message should display "Order number must be numeric and 12 digits long."
