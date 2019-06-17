class DengonbanController < ApplicationController
  layout 'dengonban'

def initialize
  super
  begin
    @dengon_data = JSON.parse(File.read("data.txt"))
  rescue => exception
    @dengon_data = Hash.new
  end
  @dengon_data.each do |key,obj|
    if Time.now.to_i - key.to_i > 24*3600 then
      @dengon_data.delete(key)
    end
end

  def index
  end
end
