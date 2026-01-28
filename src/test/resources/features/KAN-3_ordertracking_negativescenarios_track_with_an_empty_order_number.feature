Feature: OrderTracking_NegativeScenarios

  Scenario: Track with an empty order number
    Given User is on the order tracking page
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then An error message "Please enter an order number." should be displayed
    And The URL should remain "http://127.0.0.1:8000/order/tracking"
