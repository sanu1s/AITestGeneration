Feature: Return Deadline Information Display - Positive Scenarios

  Scenario: Successfully display item return deadline for another valid return ID
    Given User is on the "Return Status Check" page
    When User enters return ID "RETN12345"
    And User clicks the "Check Return" button
    Then The status message should display "You have until August 15th to return the item."
