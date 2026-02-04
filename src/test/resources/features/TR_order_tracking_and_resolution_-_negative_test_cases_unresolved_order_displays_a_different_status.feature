Feature: Order Tracking and Resolution - Negative Test Cases

  Scenario: Unresolved order displays a different status
    Given User is on the order tracking page "https://owncompany.com/track"
    When User enters order number "PENDING789"
    And User clicks the "Track Order" button
    Then The result message should display "Your order PENDING789 is currently being processed. Please check back later."
