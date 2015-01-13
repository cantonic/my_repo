Feature: C14056 sorting views from Standard views for Invoice Lines

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Sorting for Invoice Lines with required views
   Given I click on Invoice link
     And I click Invoice line link 
      When I select view and I click on each column header to sort
            | views |
            | Month End - Invoice Detail |
            | Non-PO Invoice Lines |
            | Req to PO to Invoice Detail |
        Then The column should be sorted