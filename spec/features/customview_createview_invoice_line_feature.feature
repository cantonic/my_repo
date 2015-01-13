Feature: C14053 creating view from custom views for Invoice Lines

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Creating view for Invoice Lines
   Given I click on Invoice link
     And I click Invoice line link 
     And I select 'Create View' from view
      And I create new view with name 'Invoiceline Custom View3'
       When I choose required fields and I click save
        Then The new view should be created
       When I click export
        Then I should receive email without airbracks