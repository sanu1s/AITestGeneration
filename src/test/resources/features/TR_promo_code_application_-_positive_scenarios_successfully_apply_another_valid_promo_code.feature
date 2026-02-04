Feature: Promo Code Application - Positive Scenarios

  Scenario: Successfully apply another valid promo code
    Given User is on the homepage
    When User enters valid promo code "SAVE20" into the promo code field
    And User clicks the apply promo button
    Then The status message should display "Promo code applied successfully! 20% discount added."
