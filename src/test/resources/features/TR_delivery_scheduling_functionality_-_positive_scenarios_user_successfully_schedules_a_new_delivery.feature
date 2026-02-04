Feature: Delivery Scheduling Functionality - Positive Scenarios

  Scenario: User successfully schedules a new delivery
    Given User is on the "delivery scheduling" page
    When User enters delivery address "123 Main St, Anytown" and date "2024-12-25"
    And User clicks the "Confirm Schedule" button
    Then The message "Delivery scheduled successfully for 123 Main St, Anytown on 2024-12-25" should be displayed
    And The user should be on the "delivery confirmation" page
