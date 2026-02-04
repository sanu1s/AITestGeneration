Feature: Defective Item Return Policy - Text Display Verification - Positive Test Cases

  Scenario: Verify the mandatory defective item return policy is displayed within the Help Center's FAQ
    Given User navigates to the "https://www.example.com/help-center/faq" page
    Then The FAQ content should display "Yes, we do require that the defective items be returned."
