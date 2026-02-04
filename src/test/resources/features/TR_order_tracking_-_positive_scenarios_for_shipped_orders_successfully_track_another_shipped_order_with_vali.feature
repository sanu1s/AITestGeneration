Feature: Order Tracking - Positive Scenarios for Shipped Orders

  Scenario: Successfully track another shipped order with valid ID "SHIP67890"
    Given User is on the order tracking page
    When User enters order number "SHIP67890"
    And User clicks on "Track Order" button
    Then The status message should display "Your item has shipped from our distribution center. You will receive communication to schedule your delivery soon."
