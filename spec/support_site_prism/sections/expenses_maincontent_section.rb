class MainContent < SitePrism::Section
		element :selectview, ".filter select[name='filter']"
		element :processImage, "img[src='/images/0.png']"
		element :expand, 'div.expand'		
end