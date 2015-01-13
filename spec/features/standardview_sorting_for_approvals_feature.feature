Feature: C14056 sorting views from Standard views for Approvals

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Sorting for Approvals with required views
   Given I navigate to approvals tab
      When I select view and I click on each column header to sort
            | views |
            | Delegate Usage |
            | Expense - Ultimate Approvals |
            | Expense - Override Approvals |
            | Invoices - Override Approvals |
            | Invoices - Ultimate Approvals |
            | Req - Override Approvals |
            | Req - Ultimate Approvals |
        Then The column should be sorted