Feature: Order Cancellation Confirmation - Positive Scenarios

  Scenario: User confirms cancellation of 'Vintage Wooden Chair'
    Given User is on the cancellation confirmation page
    And The confirmation message "Just to confirm you are looking to cancel Vintage Wooden Chair?" is displayed
    When User clicks the "Confirm" button
    Then The cancellation should be processed successfully
    And A success message "Cancellation of Vintage Wooden Chair has been confirmed." should be displayed
