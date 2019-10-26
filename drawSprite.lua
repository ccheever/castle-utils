-- Draws a sprite from a sprite sheet, spriteNum=1 is the upper-leftmost sprite
function drawSprite(spriteSheetImage, spriteWidth, spriteHeight, sprite, x, y, flipHorizontal, flipVertical, rotation)
  local width, height = spriteSheetImage:getDimensions()
  local numColumns = math.floor(width / spriteWidth)
  local col, row = (sprite - 1) % numColumns, math.floor((sprite - 1) / numColumns)
  love.graphics.draw(
    spriteSheetImage,
    love.graphics.newQuad(spriteWidth * col, spriteHeight * row, spriteWidth, spriteHeight, width, height),
    x + spriteWidth / 2,
    y + spriteHeight / 2,
    rotation or 0,
    flipHorizontal and -1 or 1,
    flipVertical and -1 or 1,
    spriteWidth / 2,
    spriteHeight / 2
  )
end

return drawSprite
