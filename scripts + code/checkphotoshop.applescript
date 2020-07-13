tell application "System Events"
	tell application process "Photoshop"
		--return UI elements of menu 1 of menu bar item "Format" of menu bar 1
		try
			set state to value of attribute "AXMenuItemMarkChar" of menu item "Guides" of menu item "Snap To" of menu "View" of menu bar item "View" of menu bar 1
		on error
			return "Guides"
		end try
		
		if state is "✓" then
			return "Guides "
		else
			return "Guides"
		end if
	end tell
end tell