Feature: Document Upload for Support - Positive Test Cases

  Scenario: Successfully upload a valid PDF document
    Given User is on the document upload page
    When User selects the file "document.pdf" for upload
    And User clicks the "Upload Document" button
    Then The upload status should display "Document 'document.pdf' uploaded successfully."
