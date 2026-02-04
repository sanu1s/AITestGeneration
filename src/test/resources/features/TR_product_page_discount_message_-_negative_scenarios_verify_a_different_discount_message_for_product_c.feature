Feature: Product Page Discount Message - Negative Scenarios

  Scenario: Verify a different discount message for Product C
    Given User navigates to the product page for "product-C"
    Then The discount message should display "SAVE 15% TODAY ONLY"
    And The discount message "EXTRA 20% OFF. PRICE AS MARKED" should not be displayed
