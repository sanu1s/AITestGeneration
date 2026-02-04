Feature: Agent Code Referencing Functionality - Positive Test Cases

  Scenario: Successfully reference a valid agent code
    Given User is on the agent code referencing page
    When User enters agent code "ARUIZ14"
    And User clicks the "Reference Agent" button
    Then The success message should display "Agent ARUIZ14 information loaded successfully for OwnCompany barn."
    And The URL should contain "/agent/ARUIZ14"
