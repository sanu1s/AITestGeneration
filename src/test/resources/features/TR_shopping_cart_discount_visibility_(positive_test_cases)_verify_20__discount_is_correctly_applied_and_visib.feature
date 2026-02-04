Feature: Shopping Cart Discount Visibility (Positive Test Cases)

  Scenario: Verify 20% discount is correctly applied and visible for Laptop
    Given User navigates to the product page for "Laptop" with price "1200.00"
    When User adds "Laptop" to the cart
    And User navigates to the shopping cart page
    Then The cart should display a "20%" discount
    And The total amount should be "960.00"
