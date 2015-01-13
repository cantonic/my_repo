Feature: C14056 sorting views from Standard views for Requisition Header 

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario: Sorting for Requisition Header with required views
   Given I click on Requisition link
     And I click Requisition Header 
      When I select view and I click on each column header to sort
            | views |
            | Current Approver with Time |
            | Draft |
            | Ordered |
            | Partially Received Reqs |
            | Pending Approval |
            | Pending Receipt |
            | Requiring Action |
            | Requisition Record History |
            | Sent for RFQ |
        Then The column should be sorted
          