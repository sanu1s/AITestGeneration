Feature: Order Search Page UI Verification - Positive Scenarios

  Scenario: Verify All Required UI Elements are Present
    Given I navigate to the Order Search page
    Then I should see the title "Order Search"
    And I should see an input field labeled "Order Number"
    And I should see an input field labeled "Tracking Number"
    And I should see a "Search" button
    And I should see a designated area for search results
