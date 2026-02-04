Feature: Agent Connection Request Functionality - Negative Scenarios

  Scenario: Attempt to connect to agent during off-hours
    Given User is on the support chat page
    When User types "I need live support" into the chat input
    And User clicks the "Send" button
    Then An error message "Live chat is currently closed. Our hours are M-F 9 AM - 5 PM." should be displayed
