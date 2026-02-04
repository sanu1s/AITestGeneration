Feature: Contact Agent Functionality - Positive Test Cases

  Scenario: User successfully navigates to the Contact Us page
    Given User is on the "https://www.example.com" home page
    When User clicks on "Speak to agent" button
    Then User should be on the "Contact Us" page with URL containing "contact-us"
    And The page should display a heading "Contact Our Support Team"
