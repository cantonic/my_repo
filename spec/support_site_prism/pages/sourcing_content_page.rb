require "./spec/support_site_prism/sections/sourcing_secondaryheader_section.rb"



class SourcePage < SitePrism::Page

 section :secondaryheadersourcing, SecondaryHeaderSourcing, 'nav#secondary'


  def responseItemClick()
    secondaryheadersourcing.responsce_item_link.click
    sleep 5
  end

  


end
