Feature: Delivery Scheduling Functionality - Positive Scenarios

  Scenario: User successfully reschedules an existing delivery
    Given User is on the "delivery scheduling" page with order "ORD789"
    When User updates delivery address to "456 Oak Ave, Otherville" and date to "2025-01-15"
    And User clicks the "Reschedule Delivery" button
    Then The message "Delivery rescheduled successfully for 456 Oak Ave, Otherville on 2025-01-15" should be displayed
    And The user should be on the "delivery confirmation" page
