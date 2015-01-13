Feature: C14056 sorting views from Standard views for expenses report line

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Sorting for Expense Report Header with required views
   Given I click on expenses link
     And I click Expense Report Line 
      When I select view and I click on each column header to sort
            | views |
            | All |
        Then The column should be sorted