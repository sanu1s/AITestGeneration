Feature: Shopping Cart Discount Disappearance (Negative Test Cases)

  Scenario: Verify 20% discount disappears after leaving and revisiting cart for Laptop
    Given User navigates to the product page for "Laptop" with price "1200.00"
    And User adds "Laptop" to the cart
    And User navigates to the shopping cart page and confirms a "20%" discount is displayed
    When User navigates to the homepage and then revisits the shopping cart page
    Then The cart should no longer display a "20%" discount
    And The total amount should revert to "1200.00"
