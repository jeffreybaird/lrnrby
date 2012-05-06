#! /usr/bin/env ruby -w
#  Created by Morton Goldberg on November 04, 2006.
#  turtle_view_test.rb

require "test/unit"
require "../lib/turtle_view"

class TestTurtleView < Test::Unit::TestCase
   include Math

   #Snap point to integer grid.
   def snap(pt)
      pt.map { |e| e.round }
   end

   def test_transform
      # The view is the image of a 400 x 400 square in turtle space.
      view = TurtleView.new(nil, nil)
      view.handle_map_event(400, 400)
      turtle_pt = [50 * sqrt(2), 100 * sqrt(2)]
      view_pt = [200 + 71, 200 - 141]
      assert_equal(view_pt, snap(view.transform(turtle_pt)))
      # The view is the image of q 2.2 x 2.2 square in turtle space.
      view = TurtleView.new(nil, nil, [[-1.1, 1.1], [1.1, -1.1]])
      view.handle_map_event(440, 440)
      turtle_pt = [1, -1]
      view_pt = [220 + 200, 220 + 200]
      assert_equal(view_pt, snap(view.transform(turtle_pt)))
   end
end