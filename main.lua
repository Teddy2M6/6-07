-----------------------------------------------------------------------------------------
--
-- Created by: Aden Rao
-- Created on: April 12, 2019
--
-- This program puts a text field on the screen and it lets the user guess my age and it gives them hints as to if I am older or younger each time they guess 
--
-----------------------------------------------------------------------------------------

-- Background color
------------
display.setDefault( "background", 0/255, 102/255, 200/255 )
------------

-- Birthday cake picture and enter button
----------------------
local image = display.newImageRect( "assets/agepicture.png", 130, 130 )
image.x = 160
image.y = 60

local calculateButton = display.newImageRect( "assets/enterbutton.png", 200, 200 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY + 100
calculateButton.id = "calculate button"
---------------------

-- Text field and Try and guess my age text
--------------------
numberGuessedField = native.newTextField( display.contentCenterX, display.contentCenterY + 230, 225, 40 )
numberGuessedField.id = "Answer textField"

responseText = display.newText( "Try and guess my age!", 160, 200, native.systemFont, 30 )
responseText:setFillColor( 255/255, 255/255, 255/255 )
--------------------

local function calculateButtonTouch( event ) -- Calulate button touch event

ageToGuess = 15
numberGuessed = tonumber(numberGuessedField.text)

-- If statement to determine if the user has guessed the correct age
if numberGuessed > ageToGuess then
    responseText.text = "I'm younger than \n this. Try Again!"

elseif numberGuessed < ageToGuess then 
	responseText.text = "  I'm older than \n this. Try Again!"

else 
	responseText.text = "You guessed my age!"

end

end

calculateButton:addEventListener( "touch", calculateButtonTouch )