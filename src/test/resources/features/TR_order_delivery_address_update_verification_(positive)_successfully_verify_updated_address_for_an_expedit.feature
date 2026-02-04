Feature: Order Delivery Address Update Verification (Positive)

  Scenario: Successfully verify updated address for an expedited order
    Given User is on the order tracking page
    When User enters order number "EXP002_UPDATED"
    And User clicks the Track Order button
    Then The order details should include address "789 Pine Lane, Capital City, CA 95814"
