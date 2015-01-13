Feature: C14056 sorting views from Standard views for expenses header

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Sorting for Expense Report Header with required views
   Given I click on expenses link
     And I click Expense Report Header 
      When I select view and I click on each column header to sort
            | views |
            | All |
            | Accounting Review |
            | Pending Approval |
        Then The column should be sorted