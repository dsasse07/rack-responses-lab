class Application

  def call(env)
    response = Rack::Response.new  #Creates the response instance that the server will return when it receives a GET request
    if Time.now.hour < 12 
      response.write "Good Morning!" #Outputs text to responde body for display
    else
      response.write "Good Afternoon!" 
    end
    response.finish # Signals the end of the data being written to response body
  end

end
