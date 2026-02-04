Feature: Order Item Cancellation - Positive Scenarios

  Scenario: Successfully cancel a backpack from an order
    Given User is on the "order cancellation" page
    When User enters order number "ORD78901"
    And User selects item "Backpack" for cancellation
    And User clicks the "Cancel Item" button
    Then A confirmation message "Item 'Backpack' from order 'ORD78901' has been cancelled successfully." should be displayed
