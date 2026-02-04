Feature: Customer Support Connection - Negative Test Cases

  Scenario: User gets disconnected during an active chat session with a representative
    Given User navigates to the customer support page
    When User clicks the "Start Chat" button
    And User is successfully connected to a representative
    Then The error message should display "You have been disconnected from the representative."
    And The chat input field should be disabled
