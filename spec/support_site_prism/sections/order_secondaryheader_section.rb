class SecondaryHeaderOrder < SitePrism::Section

	element :order_link, "a[href='/order_headers']"
	element :orderline_link, "a[href='/order_lines']"
end