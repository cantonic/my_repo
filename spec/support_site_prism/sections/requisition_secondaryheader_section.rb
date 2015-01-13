class SecondaryHeaderReq < SitePrism::Section

	element :requisition_link, "a[href='/requisition_headers']"
	element :requisitionlines_link, "a[href='/requisition_lines']"
end