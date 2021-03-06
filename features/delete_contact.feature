Feature: An ICA admin should be able to delete a contact's information
  As an ICA admin
  I want to delete a contact's information
  so that I can clean up the contact list from time to time.

Background: all contacts have been added to the database

  Given the following individuals exist:
  | first_name   | last_name     | type            | occupation   |
  | John         | Smith         | Individual      | Teller       |
  | Gregg        | Fields        | Advisor         | Storyteller  |
  | Jack         | Mitchell      | BoardMember     | Bankteller   |
  | Faye         | Johnson       | Individual      | Futureteller |
  | Colin        | Harnes        | Advisor         | Dreamteller  |
  
  And the following companies exist:
  | name               | representative_role | representative_id | type                        |
  | John's Bank        | CEO                 | 1                 | PortfolioCompany            |
  | Faye Future        | financial manager   | 4                 | EducationCompany            |
  | Mitchell's Bank    | teller              | 3                 | ProfessionalServiceProvider |
  | Harnes Dreamimg    | bookie              | 5                 | EducationCompany            |
  

@wip
Scenario: deleting an individual who is linked to a company - confirm
  Given I am on the "John Smith" individual page
  When I follow "Delete"
  And I confirm popup
  Then I should be on the home page
  And I should see "Success!"
  
@wip
Scenario: deleting an individual who is linked to a company - cancel
  Given I am on the "John Smith" individual page
  When I follow "Delete"
  Then I should see an alert "John Smith is the representative for John's Bank.  Are you sure you want to delete individual?"
  When I press "Cancel"
  Then I should be on the "John Smith" individual page

@wip
Scenario: deleting a company without representative information - confirm
  Given I am on the "Faye Future" company page
  When I follow "Delete"
  Then I should see an alert "Are you sure?"
  When I press "OK"
  Then I should be on the home page
  
@wip  
Scenario: deleting a company without representative information - cancel
  Given I am on the "Faye Future" company page
  When I follow "Delete"
  Then I should see an alert "Are you sure?"
  When I press "Cancel"
  Then I should be on the "Faye Future" company page

@wip
Scenario: deleting an individual that is not linked to a company - confirm
  Given I am on the "John Smith" individual page
  When I follow "Delete"
  Then I should see an alert "Are you sure?"
  When I press "OK"
  Then I should be on the home page
  And I should see "Success!"
  
@wip
Scenario: deleting an individual who is not linked to a company - cancel
  Given I am on the "John Smith" individual page
  When I follow "Delete"
  Then I should see an alert "Are you sure?"
  When I press "Cancel"
  Then I should be on the "John Smith" individual page
  
@wip
Scenario: deleting a company that is linked to a representative - confirm and delete rep
  Given I am on the "Mitchell's Bank" company page
  When I follow "Delete"
  Then I should see an alert "Mitchell's Bank has a representative.  Are you sure you want to delete company?"
  When I press "OK"
  Then I should be on the home page
  And I should see "Do you want to delete representative record as well?"
  When I press "Yes"
  Then I should be on the "Jack Mitchell" individual page
  
@wip
Scenario: deleting a company that is linked to a representative - confirm and NOT delete rep
  Given I am on the "Mitchell's Bank" company page
  When I follow "Delete"
  Then I should see an alert "Mitchell's Bank has a representative.  Are you sure you want to delete company?"
  When I press "OK"
  Then I should be on the home page
  And I should see "Do you want to delete representative record as well?"
  When I press "No"
  Then I should be on the home page
  
@wip
Scenario: deleting a company that is linked to a representative - cancel
  Given I am on the "Mitchell's Bank" company page
  When I follow "Delete"
  Then I should see an alert "Mitchell's Bank has a representative.  Are you sure you want to delete company?"
  When I press "Cancel"
  Then I should be on the "Mitchell's Bank" company page
  
