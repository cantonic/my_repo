require "./spec/support_site_prism/sections/homepage_header_coupadev_section.rb"
require "./spec/support_site_prism/sections/homepage_leftcontent_coupadev_section.rb"
require "./spec/support_site_prism/sections/homepage_menulinks_coupadev_section.rb"
require "./spec/support_site_prism/sections/homepage_rightcontent_coupadev_section.rb"



class HomePage < SitePrism::Page	
	section :homepageheader, HomePageHeader, "section#topNav"
	section :homepagemenulinks, HomePageMenuLinks , "nav.primary"
	section :homepageleftcontent, HomePageLeftContent, "div#leftColumn"
 	section :homepagerightcontent, HomePageRightContent, "div#rightColumn"

##===>> // HomePageHeader starts here 
	def clickMeToSignOut()
		homepageheader.signout_link.click
	end
	def cartLinkClick()
		homepageheader.wait_until_cart_link_visible
		homepageheader.cart_link.click
		sleep 5
	end
	def getCartCount()
		c=homepageheader.cartcount.text
		return c
	end
##===>> // HomePageHeader end

##===>> // HomePageMenuLinks starts here 
    def expensesMenuClick()
    	homepagemenulinks.expenses_link.click
    end
    def requisitionMenuClick()
    	homepagemenulinks.requisition_link.click
    end
    def setupMenuClick()
    	homepagemenulinks.setup_link.click
    end
    def ordersMenuClick()
    	homepagemenulinks.orders_link.click
    end
    def invoicesMenuClick()
    	homepagemenulinks.invoices_link.click
    end
    def inventoryMenuClick()
    	homepagemenulinks.inventory_link.click
    end
    def sourcingMenuClick()
    	homepagemenulinks.sourcing_link.click
    end
    def supplierMenuClick()
    	homepagemenulinks.supplier_link.click
    end
    def itemsMenuClick()
    	homepagemenulinks.items_link.click
    end
 ##===>> // HomePageMenuLinks end

 ##===>> // homepageleftcontent starts here 
	def lastRecentItemClick()
		homepageleftcontent.last_recent_item[1].click
	end
 ##===>> // homepageleftcontent end  

end