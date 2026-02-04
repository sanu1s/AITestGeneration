Feature: User Attempts to Obtain Return Packaging Assistance (Negative Test Cases)

  Scenario: User attempts to request assistance via a contact form
    Given User navigates to the "Contact Us" page
    When User fills the subject as "Return Packaging Assistance"
    And User submits the contact form
    Then The response message should confirm "Unfortunately, we do not have a way to assist with the packaging of a return I am sorry."
