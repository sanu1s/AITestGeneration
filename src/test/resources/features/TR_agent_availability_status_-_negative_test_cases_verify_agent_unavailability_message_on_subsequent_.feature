Feature: Agent Availability Status - Negative Test Cases

  Scenario: Verify Agent Unavailability Message on subsequent attempt
    Given User is on the "Contact Support" page
    When User clicks on the "Contact Agent" button
    Then The agent unavailability message should display "We don't have an exact time for when an agent will be available due to the high volume of requests. I recommend trying again later."
