Feature: Chat Handover to Care Representative - Negative Scenarios

  Scenario: Verify absence of care representative joining message on handover failure
    Given User is on the chat interface
    When The handover sequence fails to initiate
    Then The status message should not display "A care representative is joining now to continue the conversation."
