Feature: User Personalization Display Verification - Negative Test Cases

  Scenario: Verify No Personalized Content on Public Page
    Given User navigates to the public page "https://www.example.com/public"
    Then The page should not display personalized content indicator "My Profile"
    And The page should display public content "Explore our services"
