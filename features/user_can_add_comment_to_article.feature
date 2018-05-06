Feature: List articles on landing page
  As a visitor,
  to express my opinion about an article
  I would like to be able to leave a comment on an article

  Background:
    Given the following articles exist
      | title                | content                          | author |
      | A breaking news item | Some really breaking action      | Thomas |
      | Learn Rails 5        | Build awesome rails applications | Faraz  |

  Scenario: User visits an article page and leaves a comment
    Given I visit the site
    And I click on "A breaking news article"
    And I fill in "Body" with "My comment yo!"
    And I fill in "Email" with "mathias@mail.com"
    And I click on "Save Comment"
    Then I should see "Thank you for your feedback"
    And I should see "My comment yo!"
    And I should see "Submitted by: mathias@mail.com"
