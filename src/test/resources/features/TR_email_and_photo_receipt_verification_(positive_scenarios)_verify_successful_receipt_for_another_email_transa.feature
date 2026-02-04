Feature: Email and Photo Receipt Verification (Positive Scenarios)

  Scenario: Verify successful receipt for another email transaction
    Given I navigate to the email verification page
    When I enter "TXN_EMAIL_456" into the transaction ID field
    And I click the "Verify Receipt" button
    Then I should see the status message "email and photo has been received"
