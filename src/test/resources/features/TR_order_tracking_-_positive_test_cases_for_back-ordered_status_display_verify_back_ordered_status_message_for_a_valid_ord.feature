Feature: Order Tracking - Positive Test Cases For Back-ordered Status Display

  Scenario: Verify back-ordered status message for a valid order
    Given User is on the order tracking page
    When User enters order number "BACKORDER123"
    And User clicks the "Track Order" button
    Then The status message should display "These items are back-ordered and we are unaware of when the stock will come in."
