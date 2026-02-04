Feature: Cart Discount Application - Negative Scenarios

  Scenario: Verify advertised 20% discount is NOT applied in cart
    Given User is on the "cart" page with items totaling "100.00"
    And A "20%" site-wide discount is advertised but not active
    When User reviews the cart summary
    Then The discount applied should be "0.00"
    And The total amount should be "100.00"
    And A message "Discount not applied" should be displayed
