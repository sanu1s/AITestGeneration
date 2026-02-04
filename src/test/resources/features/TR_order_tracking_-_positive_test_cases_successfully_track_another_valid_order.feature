Feature: Order Tracking - Positive Test Cases

  Scenario: Successfully track another valid order
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The status message should display "Here is the status of your order: Shipped"
