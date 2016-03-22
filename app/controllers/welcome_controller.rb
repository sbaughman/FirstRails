require_relative '../models/myipsum.rb'

class WelcomeController < ApplicationController

  def index
  end

  def show
    @name = params[:name]
  end

  def lorem
    @params = params
    @ipsum_paragraphs = MyIpsum.generate_text(params[:type], params[:num])
  end

end
