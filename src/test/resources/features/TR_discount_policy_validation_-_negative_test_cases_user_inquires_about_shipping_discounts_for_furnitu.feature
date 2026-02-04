Feature: Discount Policy Validation - Negative Test Cases

  Scenario: User inquires about shipping discounts for furniture and is informed none are available
    Given User is on the discount inquiry page
    When User inquires about shipping discounts for "Furniture"
    Then The discount message should display "Furniture does not usually have any discounts on shipping."
