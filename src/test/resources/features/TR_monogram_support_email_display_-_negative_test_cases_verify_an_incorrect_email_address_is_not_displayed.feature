Feature: Monogram Support Email Display - Negative Test Cases

  Scenario: Verify an incorrect email address is NOT displayed for monogram support
    Given User navigates to "https://www.example.com/monogram-support"
    Then The support information section should NOT display the email address "incorrect@wrongcompany.com"
