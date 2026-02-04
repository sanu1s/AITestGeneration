Feature: Order Cancellation Information Submission - Positive Test Cases

  Scenario: Successful submission of another valid cancellation reason
    Given User is on the "Order Cancellation Request" page
    When User enters "Ordered wrong size, need to reorder" as the cancellation reason
    And User clicks "Submit Request" button
    Then The success message should display "Your cancellation request has been submitted successfully."
