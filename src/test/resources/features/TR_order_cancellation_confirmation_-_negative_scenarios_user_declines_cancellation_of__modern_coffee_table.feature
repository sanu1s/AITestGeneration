Feature: Order Cancellation Confirmation - Negative Scenarios

  Scenario: User declines cancellation of 'Modern Coffee Table'
    Given User is on the cancellation confirmation page
    And The confirmation message "Just to confirm you are looking to cancel Modern Coffee Table?" is displayed
    When User clicks the "Decline" button
    Then The cancellation should not be processed
    And A message "Cancellation has been declined." should be displayed
