Feature: Product Page Discount Message - Positive Scenarios

  Scenario: Verify 'EXTRA 20% OFF. PRICE AS MARKED' message for Product B
    Given User navigates to the product page for "product-B"
    Then The discount message should display "EXTRA 20% OFF. PRICE AS MARKED"
