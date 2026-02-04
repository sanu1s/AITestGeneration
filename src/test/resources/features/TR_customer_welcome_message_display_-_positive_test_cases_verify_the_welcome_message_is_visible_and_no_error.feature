Feature: Customer Welcome Message Display - Positive Test Cases

  Scenario: Verify the welcome message is visible and no errors are present
    Given I navigate to the OwnCompany welcome page
    Then I should see the message "Thank you for being a OwnCompany customer, have a wonderful day!"
    And I should not see any error messages
