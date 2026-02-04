Feature: Order Item Cancellation - Positive Scenarios

  Scenario: Successfully cancel shoes from another order
    Given User is on the "order cancellation" page
    When User enters order number "ORD23456"
    And User selects item "Shoes" for cancellation
    And User clicks the "Cancel Item" button
    Then A confirmation message "Item 'Shoes' from order 'ORD23456' has been cancelled successfully." should be displayed
