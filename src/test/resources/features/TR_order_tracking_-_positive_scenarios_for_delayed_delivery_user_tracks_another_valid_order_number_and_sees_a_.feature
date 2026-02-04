Feature: Order Tracking - Positive Scenarios for Delayed Delivery

  Scenario: User tracks another valid order number and sees a delayed and uncertain delivery date for a blanket
    Given User is on the order tracking page
    When User enters order number "BLANKET456"
    And User clicks the "Track Order" button
    Then The status message should display "The delivery date for your blanket has been pushed back to August 15th"
    And The status message should also display "We can't confirm if this date is final"
