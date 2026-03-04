Feature: OrderQuest Page UI Elements - Positive Scenarios

  Scenario: Verify Selecting Tracking Number Option
    Given I navigate to the OrderQuest page URL "http://orderquest.com:7070"
    When I select "Tracking Number" from the dropdown with ID "searchType"
    Then the dropdown with ID "searchType" should have "Tracking Number" as the selected option
    And the input field with ID "orderIdInput" should still have placeholder "Enter Order ID"
    And I should see a button with ID "searchBtn" and text "Search"
