Feature: C14056 sorting views from Standard views for Users

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Sorting for Users with required views
   Given I click on Setup link
     And I click Users link
      When I select view and I click on each column header to sort
            | views |
            | Active |
            | Custom User Role |
            | Inactive |
            | User Record History |
            | Users - Non-Company Email |
            | Users w/ Exp Self-Approval Limit |
            | Users w/ Req Self-Approval Limit |
            | Users With Admin Role |
            | Users with Content Groups |
            | Users with Missing Approvers |
        Then The column should be sorted