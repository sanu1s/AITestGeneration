Feature: Product Price Display Accuracy (Positive & Negative Cases)

  Scenario: Negative Scenario 1: Verify Old Price Not Displayed for 'Headphones Elite'
    Given User navigates to the product page for "Headphones Elite"
    Then The product price should not display "$150.00"
    And The product price should display "$175.00"
