Feature: Order Cancellation - Positive Test Cases

  Scenario: Successfully cancel another valid order
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    And User clicks the "Cancel Order" button
    And User confirms the cancellation
    Then The success message should display "Your order ORD67890 has been successfully cancelled and its status is Cancelled."
