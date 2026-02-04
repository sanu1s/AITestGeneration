Feature: Customer Service Wait Time Information Display - Positive and Negative Scenarios

  Scenario: Verify Irrelevant Message Is Not Displayed When High Volumes Are Present (Negative)
    Given User is on the customer service contact page
    When the system status indicates high call volumes
    Then the status message should not contain "Your account is active."
