Feature: Cart Discount Application - Positive Scenarios

  Scenario: Verify 20% site-wide discount is applied and displayed
    Given User is on the "cart" page with items totaling "100.00"
    And A "20%" site-wide discount is active
    When User reviews the cart summary
    Then The discount applied should be "20.00"
    And The total amount should be "80.00"
    And A message "20% off applied successfully" should be displayed
