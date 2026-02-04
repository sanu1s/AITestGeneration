Feature: Customer Service Wait Time and Agent Transfer - Negative Test Cases

  Scenario: Agent availability message is not displayed on the page
    Given User navigates to the customer service contact page "https://example.com/customerservice"
    Then The page should not display the message "It looks a customer care representative is available, but there is a short wait time of about 0-5 minutes."
