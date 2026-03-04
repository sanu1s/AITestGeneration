Feature: OrderQuest Page UI Elements Verification - Positive Scenarios

  Scenario: Verify Tracking Number Option and Input Field Availability
    Given I navigate to the OrderQuest page
    When I select "Tracking Number" from the search type dropdown
    Then I should see the input field is still present
