Feature: Order Cancellation Confirmation - Positive Scenarios

  Scenario: User confirms cancellation of 'The Morgan Simple Desk Hutch Only'
    Given User is on the cancellation confirmation page
    And The confirmation message "Just to confirm you are looking to cancel The Morgan Simple Desk Hutch Only?" is displayed
    When User clicks the "Confirm" button
    Then The cancellation should be processed successfully
    And A success message "Cancellation of The Morgan Simple Desk Hutch Only has been confirmed." should be displayed
