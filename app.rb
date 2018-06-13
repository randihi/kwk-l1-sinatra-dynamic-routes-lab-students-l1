require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name' do 
  params[:name].reverse
end

get'/square/:number' do
params[:number].to_i 
x = (params[:number].to_i)**2 
"#{x}.to_s"
end

get '/say/:number/:phrase' do
  # num = params[:number].to_i
  # phrase = params[:phrase].to_s
  # counter = 0 
  # until counter == num 
  #   "#{phrase}"
  #   counter += 1
  # end 
  final_string =""
  (params[:number].to_i).times do
    final_string += "#{params[:phrase]}\n"
  end 
  final_string
end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
     "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
 
   get '/:operation/:number1/:number2' do
     operation = params[:operation]
     number1 = params[:number1].to_i
     number2 = params[:number2].to_i
     if operation == "add"
       answer = number1 + number2
     elsif operation == "subtract"
       answer = number1 - number2
     elsif operation == "multiply"
       answer = number1 * number2
     elsif operation == "divide"
       answer = number1 / number2
     else
       answer = "Unable to perform this operation"
     end
     answer.to_s
   end

end 
