Feature: Product Price Display Accuracy (Positive & Negative Cases)

  Scenario: Positive Scenario 2: Verify Updated Price for 'Monitor Ultra'
    Given User navigates to the product page for "Monitor Ultra"
    Then The product price should display "$350.00"
