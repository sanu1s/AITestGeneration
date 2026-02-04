Feature: New Member Discount Validation - Negative Test Cases

  Scenario: Verify message for no new member discounts upon registration
    Given User navigates to the registration page
    When User registers with email "newuser1@example.com" and password "Password123!"
    And User navigates to the "Discounts & Promotions" page
    Then The message "No new member discounts are currently available" should be displayed
