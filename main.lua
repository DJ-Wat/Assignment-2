-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local radOfCircleTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 250, 55 )

radOfCircleTextField.id = "rad textFieldA"



local areaOfCircleTextField = display.newText( "Area of Circle calculator", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 25 )

areaOfCircleTextField.id = "area textField"

areaOfCircleTextField:setFillColor( 1, 1, 1 )



local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 157, 157 )

calculateButton.x = display.contentCenterX

calculateButton.y = display.contentCenterY

calculateButton.id = "calculate button"

 function round(val, decimal)
  if (decimal) then
    return math.floor( (val * 10^decimal) + 0.5) / (10^decimal)
  else
    return math.floor(val+0.5)
  end
end

local function calculateButtonTouch( event )

    -- this function calculates the cost of a pizza given the length of one of its sides

 

    local radOfCircle
    local areaOfCircle

 

    radOfCircle = radOfCircleTextField.text

    areaOfCircle = (radOfCircle*3.14)^2

    -- printcostOfPizza

    areaOfCircleTextField.text = "The area is " .. round(areaOfCircle,2)



    return true

end



calculateButton:addEventListener( "touch", calculateButtonTouch )