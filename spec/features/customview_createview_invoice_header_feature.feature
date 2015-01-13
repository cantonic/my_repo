Feature: C14052 creating view from custom views for Invoices Header

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Creating view for Invoices Header
   Given I click on Invoice link
     And I click Invoices Header 
     And I select 'Create View' from view
      And I create new view with name 'Invoice Custom View3'
       When I choose required fields and I click save
        Then The new view should be created
       When I click export
        Then I should receive email without airbracks