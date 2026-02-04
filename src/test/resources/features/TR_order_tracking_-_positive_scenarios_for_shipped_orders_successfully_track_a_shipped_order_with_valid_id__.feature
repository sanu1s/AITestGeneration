Feature: Order Tracking - Positive Scenarios for Shipped Orders

  Scenario: Successfully track a shipped order with valid ID "SHIP12345"
    Given User is on the order tracking page
    When User enters order number "SHIP12345"
    And User clicks on "Track Order" button
    Then The status message should display "Your item has shipped from our distribution center. You will receive communication to schedule your delivery soon."
