osc_out = function (self, x, y, frame, grid)
  local path
  local x = self.x
  while (grid[self.y][x] ~= '!' and grid[self.y][x] ~= 'null') do
    x = x + 1
    path = path ..  grid[self.y][x]
    print (path)
  end
end

return osc