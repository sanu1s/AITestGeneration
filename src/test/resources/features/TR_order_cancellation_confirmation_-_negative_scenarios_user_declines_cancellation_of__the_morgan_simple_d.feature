Feature: Order Cancellation Confirmation - Negative Scenarios

  Scenario: User declines cancellation of 'The Morgan Simple Desk Hutch Only'
    Given User is on the cancellation confirmation page
    And The confirmation message "Just to confirm you are looking to cancel The Morgan Simple Desk Hutch Only?" is displayed
    When User clicks the "Decline" button
    Then The cancellation should not be processed
    And A message "Cancellation has been declined." should be displayed
