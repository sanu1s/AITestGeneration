Feature: Shipping Address Change Verification - Positive Test Cases

  Scenario: Verify successful update of shipping address for User B
    Given User navigates to "https://example.com/login"
    When User logs in with email "userB@example.com" and password "passwordB"
    And User navigates to "https://example.com/profile/addresses"
    Then The shipping address should display "789 Another Ave, Other Town, OT 67890"
