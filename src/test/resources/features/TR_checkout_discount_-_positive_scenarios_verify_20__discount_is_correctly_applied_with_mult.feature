Feature: Checkout Discount - Positive Scenarios

  Scenario: Verify 20% discount is correctly applied with multiple eligible items
    Given user is on the product page for "Mouse" with price "50.00"
    When user adds "Mouse" to the cart
    And user is on the product page for "Keyboard" with price "150.00"
    And user adds "Keyboard" to the cart
    And user proceeds to checkout
    Then the checkout page should display the "20% off" promotion
    And the final total price should be "160.00"
