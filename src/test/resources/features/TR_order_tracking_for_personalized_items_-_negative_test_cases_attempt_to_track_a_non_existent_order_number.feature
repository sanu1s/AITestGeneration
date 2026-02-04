Feature: Order Tracking for Personalized Items - Negative Test Cases

  Scenario: Attempt to track a non-existent order number
    Given I am on the order tracking page
    When User enters order number "INVALID123"
    And Clicks the "Track Order" button
    Then The error message should display "Invalid Order Number. Please try again."
