Feature: Order Tracking for Personalized Items - Positive Test Cases

  Scenario: Successfully track an order confirmed as personalized
    Given I am on the order tracking page
    When User enters order number "P_ORD1001"
    And Clicks the "Track Order" button
    Then The status message should display "Order P_ORD1001 is personalized and shipping soon."
