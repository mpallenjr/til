#When working in a Ruby Class, in the initalize definition, you can either list out the individual arguments, or you may use a general argument(one) and define keys in the class

#IE

  def initalize(first_name, last_name, age)

    @first_name = first_name
    @last_name = last_name
    @email = email

  ######

  def initalize(input_options)
    
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @email = input_options[:email]

