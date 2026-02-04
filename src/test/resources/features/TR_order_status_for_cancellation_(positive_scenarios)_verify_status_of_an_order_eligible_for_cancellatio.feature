Feature: Order Status for Cancellation (Positive Scenarios)

  Scenario: Verify status of an order eligible for cancellation
    Given User is on the order tracking page
    When User enters order number "0061845947"
    And User clicks the "Track Order" button
    Then The status message should display "Order 0061845947 is eligible for cancellation."
