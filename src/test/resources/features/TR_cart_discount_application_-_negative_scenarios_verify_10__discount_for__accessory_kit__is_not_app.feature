Feature: Cart Discount Application - Negative Scenarios

  Scenario: Verify 10% discount for "Accessory Kit" is NOT applied due to invalid conditions
    Given User has "Accessory Kit" with price "50.00" in the cart
    And A "10%" discount is advertised for "Accessory Kit" but has expired
    When User reviews the cart summary
    Then The discount applied should be "0.00"
    And The total amount should be "50.00"
    And A message "Discount for Accessory Kit is not active" should be displayed
