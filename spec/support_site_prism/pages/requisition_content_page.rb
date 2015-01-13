require "./spec/support_site_prism/sections/requisition_secondaryheader_section.rb"



class RequisitionPage < SitePrism::Page

 section :secondaryheaderreq, SecondaryHeaderReq, 'nav#secondary'


  def requisitionClick()
    secondaryheaderreq.requisition_link.click
    sleep 5
  end

  def requisitionLineClick()
  	secondaryheaderreq.requisitionlines_link.click
  	sleep 5
  end


end
