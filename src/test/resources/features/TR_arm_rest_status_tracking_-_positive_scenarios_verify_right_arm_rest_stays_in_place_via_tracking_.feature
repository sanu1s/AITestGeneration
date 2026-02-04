Feature: Arm Rest Status Tracking - Positive Scenarios

  Scenario: Verify Right Arm Rest Stays in Place via Tracking System
    Given User is on the order tracking page
    When User enters "Right Bolster Arm Rest Status Query" into the order number field
    And User clicks the "Track Order" button
    Then The status message should display "Right arm stays in place"
