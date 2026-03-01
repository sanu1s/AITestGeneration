Feature: OrderQuest Page UI Elements Verification - Positive Cases

  Scenario: Verify Placeholder Changes when 'Tracking Number' is selected
    Given I navigate to the OrderQuest page
    When I select "Tracking Number" from the "searchType" dropdown
    Then the input field "orderIdInput" should have placeholder "Enter Tracking Number"
