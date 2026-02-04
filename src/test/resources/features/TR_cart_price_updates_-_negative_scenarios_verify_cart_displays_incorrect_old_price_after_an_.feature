Feature: Cart Price Updates - Negative Scenarios

  Scenario: Verify cart displays incorrect old price after an increase (Bug case)
    Given a product "Smart Watch" with initial price "$200.00" exists
    And User adds "Smart Watch" to the cart
    When User navigates to the cart page
    Then "Smart Watch" should be displayed with price "$200.00"
    When the price of "Smart Watch" is updated to "$250.00" in the backend
    And User refreshes the cart page
    Then "Smart Watch" should not be displayed with price "$200.00"
    And the total cart price should not be "$200.00"
