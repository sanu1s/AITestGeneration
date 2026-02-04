Feature: Cart Price Updates - Positive Scenarios

  Scenario: Verify price increase for an item in cart after time
    Given a product "Fancy Widget" with initial price "$50.00" exists
    And User adds "Fancy Widget" to the cart
    When User navigates to the cart page
    Then "Fancy Widget" should be displayed with price "$50.00"
    And the total cart price should be "$50.00"
    When the price of "Fancy Widget" is updated to "$60.00" in the backend
    And User refreshes the cart page
    Then "Fancy Widget" should be displayed with price "$60.00"
    And the total cart price should be "$60.00"
