#using ruby on rails there are three different parameters


#query parameters using a '?' after the action
#REST
GET http://localhost:3000/show_name.json?name=radam
#ROUTE
get "/show_name" => "pages#name"
#CONTROLLER
def name
  my_name = params["name"].upcase
  if my_name[0] == "A"
    output_message = "Your name begins with the first letter of the alphabet"
  else
    output_message = "Your name does not begin with the first letter of the alphabet"
  end
  render json: {message: output_message}
end

#url segment parameters which allow for key/value pairs without the '?' and '=' giving a cleaner look better for SEO
#REST
GET http://localhost:3000/add_the_numbers/2/9.json
#ROUTE
get "/add_the_numbers/:number1/:number2" => "param#addition"
#CONTROLLER
def addition
  number1 = params["number1"].to_i
  number2 = params["number2"].to_i
  sum = number1 + number2
  render json: {Total: sum}
end

#body parameters, which to dont alter the url's information, typically used for more sensitive information.
#REST
POST http://localhost:3000/body_params
content-type: application/json

{
  "information": "twilio"
}
#ROUTE
post "/body_params" => "pages#body_params"  
#CONTROLLER
def body_params
  render json: {message: "body params"}
end