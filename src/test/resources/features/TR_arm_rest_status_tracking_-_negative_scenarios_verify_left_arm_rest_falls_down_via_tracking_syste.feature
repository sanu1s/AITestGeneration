Feature: Arm Rest Status Tracking - Negative Scenarios

  Scenario: Verify Left Arm Rest Falls Down via Tracking System
    Given User is on the order tracking page
    When User enters "Left Bolster Arm Rest Defect Query" into the order number field
    And User clicks the "Track Order" button
    Then The error message should display "Left arm falls down out of place within the cover"
