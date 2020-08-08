require 'dym/dym'

class String
  include DYM

  def edit_dist(str)
    edist(self, str)
  end

  def closest_match(strings)
    strings = strings.sort
    closest_dist = self.length
    closest = nil
    strings.each do |str|
      dist = edist self, str
      if dist < closest_dist
        closest_dist = dist
        closest = str
      end
    end
    closest
  end
end
