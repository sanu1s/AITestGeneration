Feature: Promotion Content Verification - Positive Test Cases

  Scenario: Verify 'extra 20%' promotion text is displayed on the offers page
    Given User navigates to the "https://www.example.com/offers" page
    Then the page should display the text "extra 20%"
