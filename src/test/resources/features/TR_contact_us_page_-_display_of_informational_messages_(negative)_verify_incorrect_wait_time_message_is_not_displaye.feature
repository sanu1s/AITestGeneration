Feature: Contact Us Page - Display of Informational Messages (Negative)

  Scenario: Verify incorrect wait time message is NOT displayed
    Given User navigates to the "Contact Us" page
    Then The estimated wait time should NOT display "The estimated wait time to connect with a care representative is about 1-2 minutes."
