Feature: Order Tracking Functionality

  Scenario: Attempt to track with an empty order number
    Given User is on the order tracking page
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then An error message "Order number cannot be empty." should be displayed
