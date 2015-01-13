Feature: C14055 creating view from Custom views for Expenses Lines

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Creating view for Expense Lines
   Given I click on expenses link
     And I click Expense Report Line
      And I select 'Create View' from view
      And I create new view with name 'Expenses Custom View3'
       When I choose required fields and I click save
        Then The new view should be created
       When I click export
        Then I should receive email without airbracks