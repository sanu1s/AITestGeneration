Feature: Order Tracking - Negative Test Cases

  Scenario: Display error for empty order number
    Given User is on the order tracking page "https://www.ourcompany.com/track"
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then The error message should display "Order Number cannot be empty. Please enter a valid order number."
