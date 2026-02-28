Feature: Order Search Page UI Verification - Positive Scenarios

  Scenario: Verify Input Fields are Interactive
    Given I navigate to the Order Search page
    When I type "ORD123" into the "Order Number" field
    And I type "TRK789" into the "Tracking Number" field
    Then the "Order Number" field should contain "ORD123"
    And the "Tracking Number" field should contain "TRK789"
