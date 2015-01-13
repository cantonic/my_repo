Feature: C14050 creating view from Custom views for Order Header

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Creating view for Order Header
   Given I click on Order link
     And I click Purchase Orders Header 
      And I select 'Create View' from view
      And I create new view with name 'Custom View3'
       When I choose required fields and I click save
       Then The new view should be created
       When I click export
        Then I should receive email without airbracks