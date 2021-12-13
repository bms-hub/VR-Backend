
When('a Get request is made') do 
    @response = HTTParty.get("https://portal.vr.com.br/api-web/comum/enumerations/VRPAT")
end
  
Then('the response has the key {string}') do |string|
   expect(@response.body).to include string 
end
  
Then('one Type of Establishment is printed') do
    establishment = JSON.parse(@response.body)
    puts establishment['typeOfEstablishment'][rand(0..55)]
end