Feature: Cart Price Updates - Positive Scenarios

  Scenario: Verify price decrease for an item in cart after time
    Given a product "Cool Gadget" with initial price "$120.00" exists
    And User adds "Cool Gadget" to the cart
    When User navigates to the cart page
    Then "Cool Gadget" should be displayed with price "$120.00"
    And the total cart price should be "$120.00"
    When the price of "Cool Gadget" is updated to "$100.00" in the backend
    And User refreshes the cart page
    Then "Cool Gadget" should be displayed with price "$100.00"
    And the total cart price should be "$100.00"
