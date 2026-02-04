Feature: Price Adjustment Request Handling - Agent Referral (Negative Test Cases)

  Scenario: User requests price adjustment for an order that is too old
    Given User navigates to the "Order Details" page
    And User views order "OLDORD9876"
    When User clicks the "Request Price Adjustment" button
    Then The error message should display "Price adjustment not available for orders older than 30 days."
