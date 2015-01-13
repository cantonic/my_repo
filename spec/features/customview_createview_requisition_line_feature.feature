Feature: C14049 creating view from Custom views for Requisition Lines

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Creating view for Requisition Lines
    Given I click on Requisition link
     And I click Requisition Line 
      And I select 'Create View' from view
      And I create new view with name 'Custom View3'
       When I choose required fields and I click save
       Then The new view should be created
       When I click export
        Then I should receive email without airbracks