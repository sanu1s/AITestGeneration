Feature: Customer Welcome Message Display - Positive Test Cases

  Scenario: Verify successful display of the standard welcome message
    Given I navigate to the OwnCompany welcome page
    Then I should see the message "Thank you for being a OwnCompany customer, have a wonderful day!"
