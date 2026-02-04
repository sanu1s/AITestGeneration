Feature: New Member Discount Validation - Negative Test Cases

  Scenario: Verify that new member discount section is not present for new users
    Given User navigates to the registration page
    When User registers with email "newuser2@example.com" and password "SecurePass456#"
    And User navigates to the "Checkout" page
    Then The element with ID "new-member-discount-field" should not be visible
