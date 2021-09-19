class DrawersController < ApplicationController
  def show
    @content = 7.times.map{ Faker::Lorem.paragraph(sentence_count: 20) }
    @drawer_content = 12.times.map{ Faker::Lorem.paragraph(sentence_count: 8) }    
  end
end
