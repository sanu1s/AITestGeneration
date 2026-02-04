Feature: Cart Discount Application - Positive Scenarios

  Scenario: Verify 15% discount for specific product "Laptop Pro" is applied
    Given User has "Laptop Pro" with price "1200.00" in the cart
    And A "15%" discount is active for "Laptop Pro"
    When User reviews the cart summary
    Then The discount applied should be "180.00"
    And The total amount should be "1020.00"
    And A message "15% off for Laptop Pro applied" should be displayed
