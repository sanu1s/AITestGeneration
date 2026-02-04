Feature: Monogram Support Email Display - Negative Test Cases

  Scenario: Verify an incomplete instruction is NOT displayed for monogram support
    Given User navigates to "https://www.example.com/monogram-support"
    Then The support information section should NOT display the instruction "You can email these photos directly to me."
