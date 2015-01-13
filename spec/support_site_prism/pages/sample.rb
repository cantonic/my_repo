class Sample < SitePrism::Page

set_url "https://dashmaster11-0-13.coupadev.com/lookup_values/bulk_loader"

element :browse , '#data_source_file'

def click()
browse.click
	end

end