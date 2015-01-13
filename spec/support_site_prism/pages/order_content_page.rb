require "./spec/support_site_prism/sections/order_secondaryheader_section.rb"



class OrderPage < SitePrism::Page

 section :secondaryheaderorder, SecondaryHeaderOrder, 'nav#secondary'


  def orderHeaderClick()
    secondaryheaderorder.order_link.click
    sleep 5
  end

  def orderLineClick()
  	secondaryheaderorder.orderline_link.click
  	sleep 5
  end


end
