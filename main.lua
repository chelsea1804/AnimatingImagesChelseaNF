-- Title: AnimatingImages
-- Name: Chelsea NF
-- Course: ICS2O/3C
-- This program displays 3 different images that move around the screen in 
-- different directions


-- to remove status bar
display.setStatusBar(display.HiddenStatusBar)

--background image with width and height
local backgroundImage = display.newImageRect("Images/blueBackground.jpg", 2048, 1536)

-- create local variable 
local textObject

-- display text on the screen at position x = 500 and y = 500
textObject = display.newText( "My Images", 500, 400, nil, 50)

-- sets the text color
textObject:setTextColor(150/255, 255/255, 0)
-----------------------------------------------------------------------------------
-- global variables
scrollSpeed1 = 2


-- character image with width and height
local phone = display.newImageRect("Images/phone.png", 200, 200)

-- change the direction of the phone to move from the right to the left
phone:scale(-1,1)

-- set the image to be transparent
phone.alpha = 0

--set the initial x and y position of the phone
phone.x = 0
phone.y = display.contentHeight/3

-- Function: MovePhone
-- Input: this funtion accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the phone
local function MovePhone(event)
	-- add the scroll speed to the x-value of the phone
	phone.x = phone.x + scrollSpeed1
	-- change the transparency of the phone every time it moves so that it fades out
	phone.alpha = phone.alpha + 0.01
end

-- MovePhone will be called over and over again
Runtime:addEventListener("enterFrame", MovePhone)

------------------------------------------------------------------------------------

-- global variables
scrollSpeed2 = 4

-- character image with width and height
local smallDog = display.newImageRect("Images/smallDog.png", 200, 200)



--Flip the image vertically and horizontally
smallDog:scale(1, -1)


--set the initial x and y position of the smallDog
smallDog.x = 10
smallDog.y = display.contentHeight/1

--Function: MoveDog
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the small dog
local function MoveDog(event)
	-- add the scroll speed to the x-value of the small dog
	smallDog.y = smallDog.y - scrollSpeed2
	-- change the transparency of the small dog every time it moves so that it 
	--fades out and then fades in
	smallDog.alpha = smallDog.alpha - 0.01
	-- rotate the small dog 45 degrees again and again
	smallDog:rotate(45)
	-- scale the image by 200% (x) and 50% (y)
	smallDog:scale(1, 1)
end

-- MoveDog will be called over and over again
Runtime:addEventListener("enterFrame", MoveDog)

-----------------------------------------------------------------------------

-- global variables
scrollSpeed3 = 1

-- character image with width and height
local wreckingBall = display.newImageRect("Images/wreckingBall.png", 200, 200)


--Flip the image vertically and horizontally
wreckingBall:scale(-1, -1)


--set the initial x and y position of wrecking ball
wreckingBall.x = 500
wreckingBall.y = display.contentHeight/1

--Function: MoveBall
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the 
-- wrecking ball
local function MoveBall(event)
	-- add the scroll speed to the x-value of the wrecking ball
	wreckingBall.y = wreckingBall.y - scrollSpeed3
	wreckingBall.x = wreckingBall.x + scrollSpeed3
	-- change the transparency of the wrecking ball every time it moves so that it 
	-- fades out
	wreckingBall.alpha = wreckingBall.alpha + 0.01


end

-- MoveBall will be called over and over again
Runtime:addEventListener("enterFrame", MoveBall)