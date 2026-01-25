Feature: OrderTracking_Validation.feature

  Scenario: Submit with an empty order number and verify error message
    Given User is on the order tracking page
    When User leaves the order number field empty
    And Clicks the "Track Order" button
    Then The result should display error message "Order number cannot be empty."
