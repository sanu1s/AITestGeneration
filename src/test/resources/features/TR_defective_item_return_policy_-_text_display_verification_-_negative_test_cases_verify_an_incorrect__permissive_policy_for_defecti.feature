Feature: Defective Item Return Policy - Text Display Verification - Negative Test Cases

  Scenario: Verify an incorrect, permissive policy for defective items is not displayed
    Given User navigates to the "https://www.example.com/returns-policy" page
    Then The returns policy section should NOT display "Defective items are not required to be returned."
