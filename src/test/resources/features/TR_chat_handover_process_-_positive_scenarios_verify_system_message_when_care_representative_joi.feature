Feature: Chat Handover Process - Positive Scenarios

  Scenario: Verify System Message When Care Representative Joins
    Given a user is on the chat support page
    When a care representative joins the conversation
    Then the system message display should contain "A care representative is joining now to continue the conversation."
