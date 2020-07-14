require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @number = params[:number].to_i
    squared = @number * @number
    squared.to_s
  end

  get "/say/:number/:phrase" do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    return @phrase * @number
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    return @w1 + " " + @w2 + " " + @w3 + " " + @w4 + " " + @w5 + "."
  end

  get "/:operation/:number1/:number2" do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    case @operation
    when "add"
      add = @number1 + @number2
      add.to_s
    when "subtract"
      subtract = @number1 - @number2
      subtract.to_s
    when "multiply"
      mult = @number1 * @number2
      mult.to_s
    when "divide"
      div = @number1 / @number2
      div.to_s
    end
  end

end