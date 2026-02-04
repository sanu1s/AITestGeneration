Feature: Order Tracking for Personalized Items - Positive Test Cases

  Scenario: Successfully track another personalized order that has shipped
    Given I am on the order tracking page
    When User enters order number "P_ORD1002"
    And Clicks the "Track Order" button
    Then The status message should display "Order P_ORD1002 is personalized and has shipped."
