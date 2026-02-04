Feature: Order Price Adjustment Functionality - Positive Scenarios

  Scenario: Successfully check price adjustment eligibility for another recent purchase
    Given User is on the "order tracking" page
    When User enters order number "PURCHASE456"
    And User clicks the "Track Order" button
    Then The status message should display "Your order PURCHASE456 for shoes is eligible for a price adjustment."
