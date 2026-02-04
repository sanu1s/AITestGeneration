Feature: Customer Service Inquiry through Support Widget - Positive and Negative Scenarios

  Scenario: Negative - Support widget button is not visible on the homepage
    Given User is on the homepage
    Then The "Support Widget" button should not be visible
