require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    result = @number*@number
    result.to_s
  end

  get '/say/:number/:phrase' do
    @repeat = params[:number].to_i
    @quote = params[:phrase]
    @quote * @repeat
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = []
    @words.push(params[:word1], params[:word2], params[:word3], params[:word4], params[:word5])
    result = @words.join(" ")
    result.insert(-1, ".")
  end

  get '/:operation/:number1/:number2' do
    @operator = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operator == "add"
      result = @num1 + @num2
    elsif @operator == "subtract"
      result = @num1 - @num2
    elsif @operator == "multiply"
      result = @num1 * @num2
    elsif @operator == "divide"
      result = @num1 / @num2
    end
    result.to_s
  end

end