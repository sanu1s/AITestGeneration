Feature: OrderTrackingValidation.feature

  Scenario: Attempt to track an order with an empty number
    Given User is on the order tracking page
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then The error message should display "Please enter an order number."
