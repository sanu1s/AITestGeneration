Feature: Checkout Discount - Negative Scenarios (Bug Reproduction)

  Scenario: Verify 20% discount is NOT applied at checkout despite eligibility message
    Given user is on the product page for "Monitor" with price "300.00"
    When user adds "Monitor" to the cart
    And user proceeds to checkout
    Then the checkout page should display the "20% off" promotion
    And the final total price should be "300.00"
