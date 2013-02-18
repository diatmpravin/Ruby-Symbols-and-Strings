
1. Single word String and Symbol

1.9.2p320 :226 > “test”
=> “test”
1.9.2p320 :227 > :test
=> :test

2. Multiple words String and Symbol

1.9.2p320 :230 > “test string”
=> “test string”
1.9.2p320 :231 > :”test string”
=> :”test string”

3. Symbol may also contain special characters like string

1.9.2p320 :234 > :”test string #”
=> :”test string #”
1.9.2p320 :235 > :”test string $”
=> :”test string $”

4. Convert string to Symbol:

1.9.2p320 :239 > “I am Ruby developer”
=> “I am Ruby developer”
1.9.2p320 :240 > “I am Ruby developer”.to_sym
=> :”I am Ruby developer”
1.9.2p320 :241 > “I am Ruby developer”.intern
=> :”I am Ruby developer”

5. Convert symbol to String:

1.9.2p320 :244 > :”I am Rails developer”
=> :”I am Rails developer”
1.9.2p320 :245 > :”I am Rails developer”.to_s
=> “I am Rails developer”

6. Strings are mutable(Mutable objects can be changed after assignment):

1.9.2p320 :250 > text = “I belongs to the”
=> “I belongs to the”
1.9.2p320 :251 > puts text << ” India”
I belongs to the India

7. Symbols are immutable(immutable objects can only be overwritten):

1.9.2p320 :252 > text = :”I belongs to the”
=> :”I belongs to the”
1.9.2p320 :253 > puts text << :” India”
NoMethodError: undefined method `<<’ for :”I belongs to the”:Symbol
from (irb#1):253

8.Frozen Strings

1.9.2p320 :277 > test = “This is ruby string”
=> “This is ruby string”
1.9.2p320 :278 > test.upcase!
=> “THIS IS RUBY STRING”
1.9.2p320 :280 > test.freeze
=> “THIS IS RUBY STRING”
1.9.2p320 :281 > test.downcase!
RuntimeError: can’t modify frozen string
from (irb#1):281:in `downcase!’
from (irb#1):281

9. String Performance:

1.9.2p320 :295 > puts “This is string performance test”.object_id
76899900
=> nil
1.9.2p320 :296 > puts “This is string performance test”.object_id
76884690
=> nil
1.9.2p320 :297 > puts “This is string performance test”.object_id
76870210
=> nil
1.9.2p320 :298 > puts “This is string performance test”.object_id
76855080
=> nil
1.9.2p320 :299 > puts “This is string performance test”.object_id
76842070
=> nil

10. Symbol Performance:

1.9.2p320 :301 > puts :”This is string performance test”.object_id
233758
=> nil
1.9.2p320 :302 > puts :”This is string performance test”.object_id
233758
=> nil
1.9.2p320 :303 >
1.9.2p320 :304 > puts :”This is string performance test”.object_id
233758
=> nil
1.9.2p320 :305 > puts :”This is string performance test”.object_id
233758
=> nil
1.9.2p320 :306 > puts :”This is string performance test”.object_id
233758

10. We can see all Symbol by running the below command.

1.9.2p320 :340 > puts Symbol.all_symbols.inspect

[:example, :"test string", :"test string #", :"test string $", :"I am Ruby developer", :"I am Rails developer", :"I belongs to the", :" India", :text=, :"This is string performance test"]

example:

hash = {“a” => “something”, “b” => “else”}
hash1 = {:a => “something”, :b => “else”}