Feature: Agent Transfer Message Display Functionality - Negative Test Cases

  Scenario: Agent Transfer Failure - Message Area is Empty
    Given User is on the support contact page
    When The system fails to initiate agent transfer
    Then The status message area should be empty
