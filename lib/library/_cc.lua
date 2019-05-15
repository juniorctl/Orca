    
    
midi_out = function ( self, x, y, frame, grid )
  self.name = '!'
  self.y = y
  self.x = x
  self:spawn(self.ports[self.name])
  self.notes_off_metro.event = self.all_notes_off(channel)
  local note = 'C'
  local channel = util.clamp( self:listen( self.x + 1, self.y ) or 0, 0, 16 )
  local knob = util.clamp( self:listen( self.x + 2, self.y ) or 0, 1, #self.chars )
  local val = util.clamp( self:listen( self.x + 3, self.y ) or 0, 0, #self.chars )
  local val = math.floor(( val / #self.chars ) * 127 )
  
  if self.banged( self.x, self.y ) then
    grid.params[self.y][self.x].lit_out = false
    self.midi_out_device:cc(knob, val, channel)
    print(knob, val, channel)
  else
    grid.params[self.y][self.x].lit_out = true
  end
end

return midi_out