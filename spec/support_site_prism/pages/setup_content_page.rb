class SetupMainPage < SitePrism::Page


element :users, "a[href='/user/list']"
element :accural_link, "a[href='/reporting/accrual']"
 
 def usersClick()
 		users.click
 		sleep 5
 end

 def accuralReportClick()
 		accural_link.click
 		sleep 5
 end

end