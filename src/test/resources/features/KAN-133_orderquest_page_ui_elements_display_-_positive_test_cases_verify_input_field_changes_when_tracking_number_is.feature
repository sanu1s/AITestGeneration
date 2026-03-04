Feature: OrderQuest Page UI Elements Display - Positive Test Cases

  Scenario: Verify input field changes when Tracking Number is selected
    Given I navigate to the OrderQuest page
    When I select "Tracking Number" from the "Search Type" dropdown
    Then I should see the input field with placeholder "Enter Tracking Number"
