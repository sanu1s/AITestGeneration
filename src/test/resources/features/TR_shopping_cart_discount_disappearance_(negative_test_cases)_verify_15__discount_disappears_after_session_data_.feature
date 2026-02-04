Feature: Shopping Cart Discount Disappearance (Negative Test Cases)

  Scenario: Verify 15% discount disappears after session data cleared for Mouse
    Given User navigates to the product page for "Mouse" with price "25.00"
    And User adds "Mouse" to the cart
    And User navigates to the shopping cart page and confirms a "15%" discount is displayed
    When User clears browser data and revisits the shopping cart page
    Then The cart should no longer display a "15%" discount
    And The total amount should revert to "25.00"
