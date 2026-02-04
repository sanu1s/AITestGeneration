Feature: Price Adjustment Request Handling - Agent Referral (Negative Test Cases)

  Scenario: User requests price adjustment for an invalid order and receives an error
    Given User navigates to the "Order Details" page
    And User views order "INVALIDORDER"
    When User clicks the "Request Price Adjustment" button
    Then The error message should display "Invalid order number or order not found."
