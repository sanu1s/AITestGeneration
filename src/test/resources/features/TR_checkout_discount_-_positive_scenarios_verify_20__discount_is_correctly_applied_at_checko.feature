Feature: Checkout Discount - Positive Scenarios

  Scenario: Verify 20% discount is correctly applied at checkout for eligible items
    Given user is on the product page for "Laptop" with price "1000.00"
    When user adds "Laptop" to the cart
    And user proceeds to checkout
    Then the checkout page should display the "20% off" promotion
    And the final total price should be "800.00"
