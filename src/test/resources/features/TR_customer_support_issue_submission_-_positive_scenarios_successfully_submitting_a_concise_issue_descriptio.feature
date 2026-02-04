Feature: Customer Support Issue Submission - Positive Scenarios

  Scenario: Successfully submitting a concise issue description
    Given User is on the "Contact Support" page
    When User enters issue description "I need to update my shipping address for a pending order."
    And User clicks "Submit" button
    Then The success message should display "Your request has been submitted and will be routed to the correct department."
