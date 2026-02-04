Feature: Order Tracking - Negative Scenarios for Delivery Fee Refund

  Scenario: Verify delivery fee portion is not refunded for bedframe
    Given User is on the order tracking page
    When User enters order number "ORD78901"
    And User clicks the "Track Order" button
    Then The status message should display "Portion of delivery fee for Bedframe not refunded."
