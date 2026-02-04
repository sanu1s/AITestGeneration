Feature: Order Item Cancellation - Negative Scenarios

  Scenario: Attempt to cancel an item not found in the order
    Given User is on the "order cancellation" page
    When User enters order number "ORD78901"
    And User selects item "Laptop" for cancellation
    And User clicks the "Cancel Item" button
    Then An error message "Item 'Laptop' not found in order 'ORD78901'." should be displayed
