Feature: Order Item Cancellation - Negative Scenarios

  Scenario: Attempt to cancel an item with an invalid order number
    Given User is on the "order cancellation" page
    When User enters order number "INVALID123"
    And User selects item "Backpack" for cancellation
    And User clicks the "Cancel Item" button
    Then An error message "Invalid Order Number. Please check and try again." should be displayed
