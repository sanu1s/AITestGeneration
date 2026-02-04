Feature: Order Tracking - Positive Scenarios for Charge and Stock Status

  Scenario: Verify Back-ordered Items Message
    Given User is on the order tracking page
    When User enters order number "ORD00112"
    And User clicks the "Track Order" button
    Then The status message should display "Once h stock is in for the other items that are back-ordered, you will be charged for those."
