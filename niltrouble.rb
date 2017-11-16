h = {'fnord' => nil}

p h['fnord']

def empty
 #empty method returns nil
end

p empty

result = if (2 + 2) == 5
            "uh oh"
         end
p result

type = case :foo
       when String then "string"
       when Integer then "integer"
       # when Symbol then "symbol"
       end
p type

if (2+2) == 5
  tip = "follow the white rabbit"
end
p tip
