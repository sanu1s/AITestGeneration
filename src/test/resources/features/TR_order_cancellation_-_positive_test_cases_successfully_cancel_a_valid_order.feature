Feature: Order Cancellation - Positive Test Cases

  Scenario: Successfully cancel a valid order
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    And User clicks the "Cancel Order" button
    And User confirms the cancellation
    Then The success message should display "Your order ORD12345 has been successfully cancelled and its status is Cancelled."
