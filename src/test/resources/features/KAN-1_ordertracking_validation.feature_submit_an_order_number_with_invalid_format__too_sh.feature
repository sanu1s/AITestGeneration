Feature: OrderTracking_Validation.feature

  Scenario: Submit an order number with invalid format (too short) and verify error message
    Given User is on the order tracking page
    When User enters order number "ABC"
    And Clicks the "Track Order" button
    Then The result should display error message "Invalid Order Number format."
