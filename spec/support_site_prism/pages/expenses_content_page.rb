require "./spec/support_site_prism/sections/expenses_maincontent_section.rb"
require "./spec/support_site_prism/sections/expenses_secondaryheader_section.rb"


class ExpensesContent < SitePrism::Page

 section :secondaryheader, SecondaryHeader, 'nav#secondary'
 section :maincontent, MainContent, 'div#page-container'
 

   def expenseReportLink()
   		secondaryheader.expensereport_link.click
   		sleep 5
   end

   def expenseLineLink()
   		secondaryheader.expenselines_link.click
      sleep 5
   end

 
end