class ListsController < ApplicationController
  def index
    @Lists = List.all
  end
end
