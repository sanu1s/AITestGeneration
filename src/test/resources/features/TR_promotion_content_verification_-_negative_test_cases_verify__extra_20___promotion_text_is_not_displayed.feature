Feature: Promotion Content Verification - Negative Test Cases

  Scenario: Verify 'extra 20%' promotion text is NOT displayed on an archive page
    Given User navigates to the "https://www.example.com/archive" page
    Then the page should not display the text "extra 20%"
