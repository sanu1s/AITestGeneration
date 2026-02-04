Feature: Order Tracking - Back-ordered Status and Stock Discrepancy Information (Negative)

  Scenario: Verify disclaimer message for back-ordered item due to stock sync issue
    Given User is on the order tracking page
    When User enters order number "ORD11223"
    And User clicks the "Track Order" button
    Then The status message should display "Back-ordered"
    And The error message should display "Website stock availability is not updated in real-time with distribution centers."
