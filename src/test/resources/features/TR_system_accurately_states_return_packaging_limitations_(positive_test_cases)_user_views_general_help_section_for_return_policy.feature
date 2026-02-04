Feature: System Accurately States Return Packaging Limitations (Positive Test Cases)

  Scenario: User views general help section for return policy
    Given User navigates to the "Help Center" page
    When User accesses the "Returns and Refunds" section
    Then The system should clearly state "Unfortunately, we do not have a way to assist with the packaging of a return I am sorry."
