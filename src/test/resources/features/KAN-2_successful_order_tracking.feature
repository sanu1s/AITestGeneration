Feature: Successful Order Tracking

  Scenario: Track a valid and existing order number
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD12345 is Delayed"
    And The delivery date should be "2024-12-31"
