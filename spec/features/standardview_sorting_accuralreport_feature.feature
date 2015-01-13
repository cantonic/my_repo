Feature: C14056 sorting views from Standard views for Accural Reports

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Sorting for Accural_Reports with required views
   Given I click on Setup link
     And I click Accural Reports link
      When I select view and I click on each column header to sort
            | views |
            | Accrual - Last 6 month Orders |
            | All Open Orders |
            | Received and Uninvoiced |
        Then The column should be sorted