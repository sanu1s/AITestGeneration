Feature: Return Label Generation Confirmation - Positive Scenario

  Scenario: Verify successful generation and display of two return labels
    Given User is on the return label confirmation page
    When The page finishes loading
    Then The confirmation message should display "Thank you for your patience. I have updated the return to get you 2 labels. Below is the link for them."
    And The page should contain "2" links for return labels
