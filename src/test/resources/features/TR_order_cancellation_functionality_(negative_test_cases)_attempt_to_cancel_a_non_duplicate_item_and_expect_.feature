Feature: Order Cancellation Functionality (Negative Test Cases)

  Scenario: Attempt to cancel a non-duplicate item and expect an error
    Given User is on the order tracking page
    When User enters order number "ORD009"
    And User clicks the "Track Order" button
    Then User should see order details for order "ORD009"
    And User clicks the "Cancel Item" button for "Single Dining Chair"
    Then The error message should display "Item cannot be canceled: Not a duplicate or already shipped"
