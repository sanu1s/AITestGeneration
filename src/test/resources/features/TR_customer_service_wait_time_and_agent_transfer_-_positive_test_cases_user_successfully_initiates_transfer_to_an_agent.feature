Feature: Customer Service Wait Time and Agent Transfer - Positive Test Cases

  Scenario: User successfully initiates transfer to an agent
    Given User navigates to the customer service contact page "https://example.com/customerservice"
    When User clicks the button with text "Hold and be transferred to an agent"
    Then The URL should be "https://example.com/customerservice/transfer-initiated"
    And A confirmation message "Your transfer is being initiated." should be displayed
