Feature: Defective Item Return Policy - Text Display Verification - Negative Test Cases

  Scenario: Verify the defective item return policy is NOT displayed on an unrelated page (e.g., Contact Us)
    Given User navigates to the "https://www.example.com/contact-us" page
    Then The page should NOT contain "Yes, we do require that the defective items be returned."
