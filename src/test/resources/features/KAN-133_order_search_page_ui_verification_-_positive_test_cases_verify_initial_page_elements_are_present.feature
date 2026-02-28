Feature: Order Search Page UI Verification - Positive Test Cases

  Scenario: Verify initial page elements are present
    Given User navigates to the Order Search page
    Then User should see the title "Order Search"
    And User should see an input field labeled "Order Number"
    And User should see a "Track Order" button
    And User should see an empty area for search results
