Feature: Portal Login and Registry Access - Positive Scenarios

  Scenario: User can access registry after successful login
    Given User is logged in to the portal with username "validuser" and password "validpass"
    When User clicks the "Registry" link
    Then User should be on the "registry" page
    And The registry content should be visible
