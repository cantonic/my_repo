Feature: C14056 sorting views from Standard views for Requisition Line 

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Sorting for Requisition Line with required views
   Given I click on Requisition link
     And I click Requisition Line 
      When I select view and I click on each column header to sort
            | views |
            | All Approved Goods Lines |
            | All Approved Service Lines |
            | Draft |
            | Ordered |
            | Pending Approval |
            | Pending Receipt |
            | Req Lines with No Contract |
            | Reqs Pending Action by COA |
            | Requiring Action |
            | Sent for RFQ |
        Then The column should be sorted
 