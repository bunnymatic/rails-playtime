class PagesController < ApplicationController
  def root
    @people = Person.all
    @toys = Toy.all
    @companies = Company.all
  end
end
