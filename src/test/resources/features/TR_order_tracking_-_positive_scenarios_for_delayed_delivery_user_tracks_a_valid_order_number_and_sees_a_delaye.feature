Feature: Order Tracking - Positive Scenarios for Delayed Delivery

  Scenario: User tracks a valid order number and sees a delayed and uncertain delivery date for a pillow
    Given User is on the order tracking page
    When User enters order number "PILLOW123"
    And User clicks the "Track Order" button
    Then The status message should display "The delivery date for your pillow has been pushed back to August 11th"
    And The status message should also display "We can't confirm if this date is final"
