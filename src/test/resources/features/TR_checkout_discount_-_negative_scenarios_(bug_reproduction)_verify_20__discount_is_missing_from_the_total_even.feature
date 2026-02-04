Feature: Checkout Discount - Negative Scenarios (Bug Reproduction)

  Scenario: Verify 20% discount is missing from the total even with a clear eligibility message
    Given user is on the product page for "Webcam" with price "75.00"
    When user adds "Webcam" to the cart
    And user is on the product page for "Headphones" with price "125.00"
    And user adds "Headphones" to the cart
    And user proceeds to checkout
    Then the checkout page should display the "20% off" promotion
    And the final total price should be "200.00"
