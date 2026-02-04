Feature: Order Tracking Functionality - Positive Test Cases (JIRA 21233)

  Scenario: Successfully track an order in transit
    Given User is on the order tracking page
    When User enters order number "ORD67890" and clicks Track Order button
    Then The status message should display "Order ORD67890 is currently In Transit."
