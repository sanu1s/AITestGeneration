Feature: User Attempts to Obtain Return Packaging Assistance (Negative Test Cases)

  Scenario: User attempts to find a specific service for packaging returns
    Given User is on the "Services" page
    When User looks for "Return Packaging Service"
    Then The information section should state "Unfortunately, we do not have a way to assist with the packaging of a return I am sorry."
