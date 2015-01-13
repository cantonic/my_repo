Feature: C14056 sorting views from Standard views for Receipts

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Sorting for Receipts with required views
   Given I click on Inventory link
     And I click Receive receipt link
      When I select view and I click on each column header to sort
            | views |
            | Fully Received |
            | Pending Receipt |
            | Pending Receipt : 3-way |
        Then The column should be sorted