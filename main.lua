display.setDefault( "background", 145/255, 145/255, 239/255 )


display.setStatusBar(display.HiddenStatusBar)

 

centerX = 160

centerY = 100



local sheetOptionsIdle =

{

    width = 587,

    height = 707,

    numFrames = 10

}

local sheetIdleKnight = graphics.newImageSheet( "assets/images/knightIdle.png", sheetOptionsIdle )



local sheetOptionsWalk =

{

    width = 587,

    height = 707,

    numFrames = 10

}

local sheetWalkingKnight = graphics.newImageSheet( "assets/images/knightWalking.png", sheetOptionsWalk )



-- sequences table

local sequence_data = {

    -- consecutive frames sequence

    {

        name = "idle",

        start = 1,

        count = 10,

        time = 800,

        loopCount = 0,

        sheet = sheetIdleKnight

    },

    {

        name = "walk",

        start = 1,

        count = 10,

        time = 800,

        loopCount = 0,

        sheet = sheetWalkingKnight

    }

}



local knight = display.newSprite( sheetIdleKnight, sequence_data )

knight.x = centerX

knight.y = centerY

knight.xScale = 117.4/587

knight.yScale = 141.4/707



knight:play()



-- After a short time, swap the sequence to 'seq2' which uses the second image sheet

local function swapSheet()

    knight:setSequence( "walk" )

    knight:play()

    print("walk")

end



timer.performWithDelay( 2000, swapSheet )



display.setStatusBar(display.HiddenStatusBar)

 

centerX = 160

centerY = 400



local sheetOptionsIdle =

{

    width = 232,

    height = 439,

    numFrames = 10

}

local sheetIdleNinja = graphics.newImageSheet( "assets/images/ninjaBoyIdle.png", sheetOptionsIdle )



local sheetOptionsWalk =

{

    width = 363,

    height = 458,

    numFrames = 10

}

local sheetWalkingNinja = graphics.newImageSheet( "assets/images/ninjaBoyRun.png", sheetOptionsWalk )



-- sequences table

local sequence_data = {

    -- consecutive frames sequence

    {

        name = "idle",

        start = 1,

        count = 10,

        time = 800,

        loopCount = 0,

        sheet = sheetIdleninja

    },

    {

        name = "walk",

        start = 1,

        count = 10,

        time = 800,

        loopCount = 0,

        sheet = sheetWalkingNinja

    }

}



local ninja = display.newSprite( sheetIdleNinja, sequence_data )

ninja.x = centerX

ninja.y = centerY

ninja.xScale = 117.4/363

ninja.yScale = 141.4/458



ninja:play()



-- After a short time, swap the sequence to 'seq2' which uses the second image sheet

local function swapSheet()

    ninja:setSequence( "walk" )

    ninja:play()

    print("walk")

end



timer.performWithDelay( 2000, swapSheet )