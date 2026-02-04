Feature: Customer Support Issue Submission - Positive Scenarios

  Scenario: Successfully submitting a detailed issue description
    Given User is on the "Contact Support" page
    When User enters issue description "My recent order ORD78901 has an incorrect item. I received a blue shirt instead of a red one."
    And User clicks "Submit" button
    Then The success message should display "Your request has been submitted and will be routed to the correct department."
