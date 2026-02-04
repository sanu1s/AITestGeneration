Feature: Promo Code Application - Positive Scenarios

  Scenario: Successfully apply a valid promo code
    Given User is on the homepage
    When User enters valid promo code "PROMO10" into the promo code field
    And User clicks the apply promo button
    Then The status message should display "Promo code applied successfully! 10% discount added."
