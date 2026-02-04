Feature: Product Price Display Accuracy (Positive & Negative Cases)

  Scenario: Positive Scenario 1: Verify Current Price for 'Laptop Pro'
    Given User navigates to the product page for "Laptop Pro"
    Then The product price should display "$1200.00"
