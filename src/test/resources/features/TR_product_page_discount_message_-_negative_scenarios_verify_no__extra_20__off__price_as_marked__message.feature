Feature: Product Page Discount Message - Negative Scenarios

  Scenario: Verify no 'EXTRA 20% OFF. PRICE AS MARKED' message for Product D
    Given User navigates to the product page for "product-D"
    Then The discount message "EXTRA 20% OFF. PRICE AS MARKED" should not be displayed
