
class HomePageHeader < SitePrism::Section
    element :search_field, "#need_input"
    element :search_field_click, "#go"
	element :signout_link, "a[href='/sessions/destroy']"	
	element :cart_link, "a[href='/requisition_headers/edit_cart']"
	element :cartcount, "#cartNum"
end

