Feature: Shopping Cart Discount Visibility (Positive Test Cases)

  Scenario: Verify 10% discount is correctly applied and visible for Keyboard
    Given User navigates to the product page for "Keyboard" with price "80.00"
    When User adds "Keyboard" to the cart
    And User navigates to the shopping cart page
    Then The cart should display a "10%" discount
    And The total amount should be "72.00"
