Feature: Chat Handover to Care Representative - Negative Scenarios

  Scenario: Verify absence of digital assistant stepping away message on handover failure
    Given User is on the chat interface
    When The handover sequence fails to complete
    Then The status message should not display "The digital assistant is stepping away to allow them to take over."
