Feature: Cart Discount Application - Negative Test Cases

  Scenario: 20% Discount Not Applied in Cart for Eligible Product B
    Given User is on the product page "https://www.example.com/products/eligible-item-b"
    When User adds "Product B" with original price "250.00" to the cart
    And User navigates to the cart page "https://www.example.com/cart"
    Then The cart total should display "250.00"
