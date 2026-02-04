Feature: Customer Service Wait Time Information Display - Positive and Negative Scenarios

  Scenario: Verify Key Phrase for High Volume Message (Positive)
    Given User is on the customer service contact page
    When the system status indicates high call volumes
    Then the status message should contain "higher than normal volumes"
