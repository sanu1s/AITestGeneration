Feature: OrderQuest UI - Positive Scenarios: Verify Input Field Interactability

  Scenario: Verify user can interact with Order Number and Tracking Number input fields
    Given I navigate to "http://orderquest.com:7070"
    When I enter "ORD12345" into the "Order Number" field
    And I enter "TRK98765" into the "Tracking Number" field
    Then The "Order Number" field should contain "ORD12345"
    And The "Tracking Number" field should contain "TRK98765"
