Feature: Order Tracking for Personalized Items - Negative Test Cases

  Scenario: Track an order that is explicitly not personalized
    Given I am on the order tracking page
    When User enters order number "NP_ORD2001"
    And Clicks the "Track Order" button
    Then The status message should display "Order NP_ORD2001 is not personalized and has shipped."
