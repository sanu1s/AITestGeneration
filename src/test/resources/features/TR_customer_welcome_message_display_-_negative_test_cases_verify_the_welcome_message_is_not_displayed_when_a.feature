Feature: Customer Welcome Message Display - Negative Test Cases

  Scenario: Verify the welcome message is not displayed when an error occurs
    Given I navigate to an invalid OwnCompany page
    Then I should not see the message "Thank you for being a OwnCompany customer, have a wonderful day!"
    And I should see an error message
