Feature: Customer Service Wait Time and Agent Transfer - Negative Test Cases

  Scenario: Hold and Transfer button is not displayed on the page
    Given User navigates to the customer service contact page "https://example.com/customerservice"
    Then The page should not display a button with text "Hold and be transferred to an agent"
