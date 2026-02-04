Feature: Product Price Display Accuracy (Positive & Negative Cases)

  Scenario: Negative Scenario 2: Verify 'Price Not Available' for 'Smartphone Mini'
    Given User navigates to the product page for "Smartphone Mini"
    Then The product price area should display "Price Not Available"
    And The "Add to Cart" button should be disabled
