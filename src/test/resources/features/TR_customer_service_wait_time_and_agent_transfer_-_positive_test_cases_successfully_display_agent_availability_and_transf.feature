Feature: Customer Service Wait Time and Agent Transfer - Positive Test Cases

  Scenario: Successfully display agent availability and transfer option
    Given User navigates to the customer service contact page "https://example.com/customerservice"
    Then The page should display the message "It looks a customer care representative is available, but there is a short wait time of about 0-5 minutes."
    And The page should display a button with text "Hold and be transferred to an agent"
