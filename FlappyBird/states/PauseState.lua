--[[
    Pause State
    Author: Ethan Heavey
    
    Pauses Flabby Bird game. Displays a pause symbol and pauses all scrolling, music and movement.
]]

PauseState = Class{__includes = BaseState}

function PauseState:update(dt)
  
  -- pause music, bird, and scrolling
  --love.audio.play(sounds['pause'])
  love.audio.stop(sounds['music'])
  scrolling = false

  -- if 'p' is pressed again
  if love.keyboard.wasPressed('p') then
        love.audio.play(sounds['music'])
        -- resume the game 
        --scrolling = true
        gStateMachine:change('play')
    end
end

function PauseState:render()
  love.graphics.draw('pause.png', VIRTUAL_WIDTH/2, VIRTUAL_HEIGHT/2, 0)
end
