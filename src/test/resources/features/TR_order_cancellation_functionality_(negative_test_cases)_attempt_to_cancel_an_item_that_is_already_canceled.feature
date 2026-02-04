Feature: Order Cancellation Functionality (Negative Test Cases)

  Scenario: Attempt to cancel an item that is already canceled
    Given User is on the order tracking page
    When User enters order number "ORD010"
    And User clicks the "Track Order" button
    Then User should see order details for order "ORD010"
    And User clicks the "Cancel Duplicate Item" button for "Modern Desk Lamp"
    Then The error message should display "Item is already canceled"
