Feature: Agent Interaction - Positive Scenarios

  Scenario: Successfully request an agent callback
    Given User is on the contact page
    When User clicks the "Request Agent Call" button
    Then The system should confirm the request and display "An agent will contact you shortly."
