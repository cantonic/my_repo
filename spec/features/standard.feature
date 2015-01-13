Feature: C14056 sorting views from Standard views for expenses header

Background:
   Given I am login as "coupasupport" and "CoupaSupport1"
     And I am in homepage
      
Scenario Outline: Sorting for Expense Report Header with required views
   Given I click on expenses link
     And I click Expense Report Header 
      	And I select view <view>
         When I click on each column header to sort
          Then The column should be sorted
          Examples:
            | view |
            | "All" |
            | "Accounting Review" |
            | "Pending Approval" |

Scenario Outline: Sorting for Expense Line Header with required views
   Given I click on expenses link
    And I click Expense line Header
      And I select view <view>
         When I click on each column header to sort
          Then The column should be sorted
          Examples:
            | view |
            | "All" |
            