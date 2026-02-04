Feature: Order Tracking Functionality - Positive Test Cases (JIRA 21233)

  Scenario: Successfully track a delivered order
    Given User is on the order tracking page
    When User enters order number "ORD12345" and clicks Track Order button
    Then The status message should display "Order ORD12345 has been Delivered."
