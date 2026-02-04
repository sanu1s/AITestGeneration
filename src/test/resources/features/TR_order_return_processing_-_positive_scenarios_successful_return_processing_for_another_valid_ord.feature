Feature: Order Return Processing - Positive Scenarios

  Scenario: Successful return processing for another valid order
    Given User is on the order return page
    When User enters order number "RETN-2023-002"
    And User clicks the "Track Order" button
    Then The status message should display "return for refund to an electronic merch card"
