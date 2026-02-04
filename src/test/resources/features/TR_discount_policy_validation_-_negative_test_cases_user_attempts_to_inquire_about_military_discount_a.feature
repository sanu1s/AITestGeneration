Feature: Discount Policy Validation - Negative Test Cases

  Scenario: User attempts to inquire about military discount and is informed it's unavailable
    Given User is on the discount inquiry page
    When User attempts to apply for a military discount
    Then The discount message should display "Unfortunately, we no longer offer military discounts."
