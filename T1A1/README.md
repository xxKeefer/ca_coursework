# T1A1 - Workbook -- xxKeefer

---
## Question One --
###### *Research the development of the internet from 1980 to today. You must describe at least FIVE key events in the development of the internet. You can refer to events, people of significance, or technologies and how they have changed over time.*
\
***////// Transmission Control Protocol/Internet Protocol (TCP/IP) and Domain Name System (DNS)*** \
After the initial development of ARPANET the academic community began to widely adopt large networks of computers, and the number of those networks grew larger a shift from the initial information transfer protocol and naming convention of those networks allowed for two thing. It made the information transfer more reliable with ways to deal with information that was lost along the way and introduced a better naming scheme for the vast amount of network address that were being created. These two thing that happened relatively close to each other allowed for massive growth and rapid adoption of the internet

***////// HyperText Markup Language (HTML)***\
Toward the end of 1990 a man by the name of Tim Berners released a mark up language that allowed people to write and format web pages. It was a very important development for the internet because it allowed anyone, anywhere with any text editor to participate in making websites. with only a handful of tags to indicate different parts of a web page anyone could master it in a day and be developing. As he released it for free forever it caused a massive explosion of creativity and web development.


***////// The Google search engine is born***\
In the late nineties the search engine we all use everyday was born. Google fundamental changed what it meant to look something up or find something out. "Just Google it", right? The mission state was *"to organize the world's information and make it universally accessible and useful"* and they sure have. Not many people move past the first listing of a google search. This technology helped enthusiasts and casual users alike find all of the relevant information they wanted.

***///// The Smartphone, the ultimate human-machine interface***\
In 2007, Apple reveled the iPhone. The first true smartphone created so many opportunities to advance the internet for both consumers and business. Humans could now take the internet in there pocket and it increased not only convenience, but an opportunity for business to develop apps for the device to make it more valuable to the consumers. This created a whole new industry of app development. The use of Facebook, Twitter, Instagram and many other internet reliant apps allowed consumers to connect and business to gather data about consumers to better sell to them.

#### [Sources]---
1. [A Brief History of the Internet -- Barry M. Leiner, et al.](https://dl.acm.org/doi/pdf/10.1145/1629607.1629613)
2. [Internet History Timeline: ARPANET to the World Wide Web -- Kim Ann Zimmermann & Jesse Emspak June 27, 2017](https://www.livescience.com/20727-internet-history.html)
3. [A Brief History of HTML -- JEFFREY VEEN](https://www.wired.com/1997/04/a-brief-history-of-html/)
4. [How the Internet Has Changed Everyday Life -- Zaryn Dentzel](https://www.bbvaopenmind.com/en/articles/internet-changed-everyday-life/)
5. [The History and Evolution of the Smartphone: 1992-2018 -- Owen Andrew](https://www.textrequest.com/blog/history-evolution-smartphone/)

---
## Question Two --
###### Define the features of the following technologies that are essential in terms of the development of the internet:
  - Packets
  - IP addresses (IPv4 and IPv6)
  - routers and routing
  - domains and DNS

***////// Packets***\
Packets are how large quantities of data that make up a complete file can be broken down into smaller pieces to be sent across the internet. With out packets, whole files would have to be sent across the internet. if any of the data got corrupted or the file got lost on it's route the effort to send it in the first place would be wasted. packets are much smaller pieces of information that have specific characteristics encoded that help with error correction and reassembly on the other side. Because the packets are smaller in size if one gets corrupted its much quicker to resend that packet then the whole of the file.

***////// IP addresses (IPv4 and IPv6)***\
IP or internet protocol addresses are the destinations we send our packets, more specifically the formatting of the address on the packets we are sending. many things can be encoded into these addressing labels to ensure that the packet reaches the intended location. Information that checks for errors at the end point, helps middle men decide how to most efficient pass the packet forward and determine which machine in a network it has to get to is all encoded. This is true of both IPv4 and IPv6 addresses but the major difference is between the two is the size of the addresses. Ipv4 uses 32bits (leading to roughly four billion addresses that we have essentially run out of) and IPv6 uses 128bits. (Which would allow for each person on earth to have a trillion computers and still have all machines uniquely addressed).

***////// Routers and Routing***\
Routers are responsible for the actual transfer of packets through the internet and routing is the choice of pathing through the internet. Routing is very important because it deals with a few of the problems with packets on a multiple node network. such as making sure packets don't end up in infinite loops (this boost performance by reducing unnecessary traffic) and make sure a path through the internet stays open and reserved ensure that a constant stream of data can flow which makes services like Video Calling possible. Routers are the Nodes that know where the next destination on the way for a packet is going to be and keeps up to date tables of which next steps are open or which blockages need to be circumvented.

***////// Domains and DNS***\
If packets are like letters, and IP addresses are like well the address for the letter, and routers are like the postmen/women then DNS (Doamin Name Servers) and Domains are like the post offices. Domains are the .com's, .org's, .gov's and the .au's, .fr's, .tv's. You can compare domains in this analogy to suburbs and DNS's as local post offices. The person at the post office may not know where the address is but they know the postmen that will deliver it on his route. DNS's are the ultimate address book, they are the machine you ask where to send your packets if no other machines know. In this way they play a vital role in getting information transferred across the internet


#### [Sources]---
1. [DEFINITION network packet -- Margaret Rouse & Alex Gillis](https://searchnetworking.techtarget.com/definition/packet)
2. [Internet Protocol - IPv4 vs IPv6 as Fast As Possible -- Techquickie](https://www.youtube.com/watch?v=aor29pGhlFE)
3. [What is IPv6, and why aren’t we there yet? -- Keith Shaw](https://www.networkworld.com/article/3254575/what-is-ipv6-and-why-aren-t-we-there-yet.html)
4. [What is IP routing? -- study-ccna.com](https://study-ccna.com/what-is-ip-routing/)
5. [DNS: Why It’s Important and How It Works -- Chris Gonyea](https://dyn.com/blog/dns-why-its-important-how-it-works/)

---
#### Question Three --
###### 	Define the features of the following technologies that are essential in terms of the development of the internet:
  - TCP
  - HTTP and HTTPS
  - Web browsers (requests, rendering and developer tools)

***////// TCP (Transmission Control Protocol)***\
TCP is a standard that defines how two machines can share information of separate networks. features include the ability to split up information and send it. Receive those backs and check if there are any errors. Re-sending information if it was lost and rearrange all the packets into the order they were sent. TCP is a connection orientated protocol meaning once a connection between two machines the virtual circuit (or route the information takes through the internet) will remain open until such time that ALL data is received. If information is lost along the way the end machine can request the information to be resent and when it finally has all the information TCP will reorganize it into the order it was sent in. It is for this reason TCP is sometimes referred to as a **"RELIABLE"** connection.

***////// HTTP and HTTPS***\
Hyper Text transfer Protocol and HTTP Secure are methods by which content is accessed on the internet. When clicking a link on a web page your computer sends a request off to another machine in the world where the information about the page is stored and asks to be sent the data required to display the web page. In the early days of the internet all that was requested was the HTML code. Nowadays there are many additional components including but not limited to CSS and Javascript that make the web page more visually appealing or create a better user experience. HTTPS came around to address privacy and security concerns. It works in much the same way as HTTP the fundamental difference is that HTTPS encrypts all information such that nothing is sent in a human readable fashion and would require a "private key" known only to the server to read it. This makes it appropriate to use when sending information like password or credit card details.

***////// Web browsers (requests, rendering and developer tools)***\
Requests are how the browser gets the information from the server a page is hosted on to be able to display it. It will do a DNS lookup, where it talks to the closest DNS server to convert the human readable www.blahblah.com address it has received and converts it to the computer usable IP adress which will look something like 159.122.35.130. Once it has the correct address, it will then ask that server to provide the necessary data like HTML and CSS etc... to be able to render the page.

Rendering is what the page does once it has received all the information. It'll apply the CSS to the HTML and run any Javascript that is required to display the page correctly, and then display it on screen in the order that is determined by the HTML and with the styling that is determined by the CSS.

Developer tools are a set of tools that let developers diagnose problems in code as it is rendered on the screen. Usually accessed by pressing f12 on the function keys, developer tools are usually displayed in a side window that will let you directly edit the various pieces of code and see what messages the code returns in the console.

#### [Sources]---
1. [TCP (Transmission Control Protocol) -- Margaret Rouse](https://searchnetworking.techtarget.com/definition/TCP)
2. [An overview of HTTP -- MDN contributors](https://developer.mozilla.org/en-US/docs/Web/HTTP/Overview)
3. [How Browsers Work: Behind the scenes of modern web browsers -- Tali Garsiel and Paul Irish](https://www.html5rocks.com/en/tutorials/internals/howbrowserswork/#The_rendering_engine)
4. [How to Use Web Browser Developer Tools -- Scott Orgera](https://www.lifewire.com/web-browser-developer-tools-3988965)
5. [What Happens When Your Browser Requests a Web Page? -- Steven Bradley](https://vanseodesign.com/web-design/browser-requests/)
---
#### Question Four --
###### Identify THREE data structures used in the Ruby programming language and explain the reasons for using each.

***////// Arrays***\
Arrays are a type of list like data structure. It can be thought of as an unorganized list as the items in the list are only sorted (or indexed) in the order that they we're added to the array. The indexing begins at 0 and you can have effectively as many items in an array as you like.

***////// Hashes***\
Hashes are very similar to arrays in the sense they are a list like data structure as well. They *KEY* difference is that instead of being indexed implicitly with numbers counted from 0, the items in the list are organized into categories by name. These names (called keys) point to a value of some kind. The values can generally be anything you like. string, integer, array or hash to name a few. This is very powerful because it makes it much easier to call a specific value rather then having to recall the number it was indexed at which may change as the list grows or shortens.

***////// Classes***\
Classes are very important and powerful data structures within Ruby. As Ruby is a Object Orientated language and describing Classes is fundamental in describing objects. A class is a piece of code that describes things that exist, this seems abstract but let's take the case of a Person. People exist, and there are commonalities between all people. A Person will have a name, they will eat food and sleep. So defining a class called Person would be handy when trying to write code involving many people. when we define specific people when can give each person a different name but all of them will still eat and sleep. Further we can create sub-classes of people. For example Joe is a Bus Driver and Elizabeth is a Programmer. It is unlikely that Joe knows how to program and Elizabeth is unlikely to know how to drive a bus, They are both still People but if we create sub-classes of People, BusDriver and Programmer, we can make it so that while both people only Joe knows how to `def drive()` and only Elizabeth knows how to `def code()`. In short Classes are good to reduce repetitive code when describing real world objects. They are also good at controlling flow of information by setting accessors and reader methods in the class. This means that some information can be passed to the object to store but then it will never divulge the information again or we can declare some information about an object that can be accessed but never changed so we can be sure of certain properties of an object stay the same for future reference, like a person's name for example.

#### [Sources]---
1. [Writing classes -- Ruby Monstas](http://ruby-for-beginners.rubymonstas.org/writing_classes.html)
2. [When do you use an array versus a hash in Ruby? -- Maciej Czuchnowski ](https://teamtreehouse.com/community/when-do-you-use-an-array-versus-a-hash-in-ruby)
3. [Ruby - Classes and Objects -- Tutorials Point](https://www.tutorialspoint.com/ruby/ruby_classes.htm)
4. [An Overview of Data Structures For Ruby Developers -- Jesus Castello](https://www.rubyguides.com/2019/04/ruby-data-structures/)
---
#### Question Five --
###### Describe the features of interpreters and compilers and how they are different.

***////// Interpreters***\
A interpreted language is code that requires a interpreter to be understood by the machine trying to execute the code. The advantage of this type of code is that it can be made cross platform. As long as the machine has a interpreter that can run the code then that code can be executed on the machine. The drawback is that it make interpreted code (in comparison with compiled code) slower to run as there is an extra step of translation that happens to tell the machine what to do. Typically code of this type is the program and when it is run the interpreter reads the code line by line and sends commands to the machine in a language it understands.

***////// Compilers***\
In stark contrast to interpreted languages, compiled language need to be processed by a compiler so that the human readable source code can be converted into machine language. This has a side effect of making the code faster to run as no translation needs to happen before the code is run. It has the draw back of making the code less portable as the source code needs to be compiled specifically into the machine language the code is going to run on. this means that if you compile the source code on a Windows machine it won't work on a Mac machine as it won't understand the windows machine language. There are a special case of compiled languages like Java which is compiled "just-in-time". programs like this a compiled on the fly inside a virtual machine or run-time that exists on the host machine. The run-time will compile the to code just before it is executed and send of the translated code to the machine as it is executed. This makes the code much more portable and quicker to compile but has the drawback that if written poorly it will slow down the just-in-time compiling and negate the performance boost gained by using the run-time to compile.

#### [Sources]---
1. [What is the difference between a compiled and an interpreted program? -- Indiana University Knowledge Base](https://kb.iu.edu/d/agsz)
2. [Compiled Versus Interpreted Languages -- freecodecamp.org](https://guide.freecodecamp.org/computer-science/compiled-versus-interpreted-languages/)
---
#### Question Six --
###### Identify TWO commonly used programming languages and explain the benefits and drawbacks of each.

***////// Ruby***\
Ruby has been designed with the philosophy that it should be human readable first and that writing and reading Ruby code should be intuitive, almost as intuitive as regular English. This flexible and powerful syntax lets developers code, prototype and pivot very quickly. This flexibility comes from the many similar methods built into Ruby. For example there are many ways to loop through an array, you could:
```ruby
array = []

# do this
for item in array
  puts item
end

# or have it on a single line like this
array.each {|item| puts item}

#or something like this
i=0
while i<array.length
  puts array[i]
  i+=1
end

#this looks the same but it shows off
#that the .length and .size are similar
#methods with different names
i=0
while i<array.size
  puts array[i]
  i= i+1
end
```
The other difference between Ruby and Python is the communities surrounding the language and what those communities are focused on. It can be said that the Ruby community is always at the bleeding edge of web development. The web frame work for ruby us called Ruby on Rails and is the platform that many big / popular websites are built upon and is one of the reasons why Ruby is as big as it is.  A major contributing factor to RoR's popularity is it's design of convention over configuration. This just means a lot of the tedious parts of web app development are automated in a predefined way (or according to convention). The upside of this is that developers get to focus on the more interesting potentially revenue generating features of an app. Thus the app is produced much faster with all the humdrum taken care of the automated convention. The downside is that you have to be aware of the convention to begin with to be able to understand how your app works, this can make RoR a more difficult framework to learn to begin with. The major drawbacks associated with ruby are to do with performance and ability to scale up. The reasons for this is that ruby just is slower to execute than some other language choices, and with such flexible code it is easy for inexperienced devs to write non optimal code which slows down the system further. Just because there are many ways to skin a cat doesn't mean that there isn't a best way to do it. But these issue can be address with experience and the fact that Ruby 3 coming 2020 is said to be three times faster to execute.


***////// Python***\
Python differs from ruby in two key ways. Firstly the philosophy of Python is about simplicity and directness. In Python there tends to be only one way to write a piece of code. This results in code that is easier to debug. While like in Ruby variables are dynamically typed meaning you don't have to declare what they are before you initiate them, Python's methods and functions tend to be very explicit. This means that if you as a programmer write a piece of code to do something specific, it is likely the only way to achieve that in pythons and the next coder to read you code will be able to understand it as it is likely the way he or she would have written the same code. The second key difference is the communities that surround both languages pushing the languages development. While Ruby is very focused on web development, there is a very strong academic community focused on Mathematics and Data Science that love Python. This has lead to many libraries concerned with discrete mathematics and processing or visualizing data to be developed for Python. This gives the language a distinct advantage of Ruby in that specific area of programming. The obvious drawback of Python over Ruby is that due to the philosophy of "there should be only one way" to do anything in the code, the code becomes much less human readable and for less elegant to code. Something that may require only two lines of code in Ruby can blow out to several lines of code in Python. However, the exact instructions given to the machine will be evident in the syntax of those several lines, in Ruby a lot of what exactly is happening is hidden behind Ruby's flexible code.


#### [Sources]---
1. [Ruby vs. Python: What’s the Difference? -- Mattan Griffel ](https://learn.onemonth.com/ruby-vs-python/)
2. [Comparison: Ruby vs. Python -- KAMI MALDONADO](https://stackify.com/ruby-vs-python/)
3. [Why is Ruby on Rails A Pitch Perfect Back End Technology? -- Dev Shankar Ganguly
](https://blog.goodaudience.com/why-is-ruby-on-rails-a-pitch-perfect-back-end-technology-f14d8aa68baf)
4. [Why Ruby on Rails Is Still a Good Choice in 2020 [UPDATED] -- Maja Nowak](https://www.monterail.com/blog/why-ruby-on-rails-development-2020)
5. [Convention Over Configuration -- Francisco Sáez](https://facilethings.com/blog/en/convention-over-configuration)
---
#### Question Seven --
#### 	Identify TWO ethical issues from the areas below and discuss the extent to which an IT professional is ethically responsible in terms of the issue.
```
List of topics containing ethical issues:
  - access to a user’s personal information (medical, family,
    financial, personal attributes such as sexuality, religion,
    or beliefs)
  - intellectual property, copyright, and acknowledgment.
  - criminal acts such as theft, fraud, trafficking and distribution
    of prohibited substances, terrorism
  - GPS tracking data and other types of metadata, MAC addresses,
    hardware fingerprints
  - freedom of thought, conscience, speech and the media
  - aggressive sales and marketing practices designed to mislead and
    deceive consumers
  - trading of shares on the stock exchange OR crypto-currencies
```
######For each ethical issue identify a source of legal information relating to the ethical issue and discuss whether the law is helpful in assisting a developer to act in an ethical way.

***////// Answer here.***\
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.


######  Conduct research into a case study of ONE of the ethical issues you have chosen discuss how an ethical IT professional should respond to the case study and how they might mitigate or prevent ethical breaches.

***////// Answer here.***\
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

#### [Sources]---
1. [12 ethical dilemmas gnawing at developers today -- Peter Wayner](https://www.infoworld.com/article/2607452/12-ethical-dilemmas-gnawing-at-developers-today.html)
2. []()
3. []()
4. []()
5. []()
---
#### Question Eight --
###### Explain control flow, using an example from the Ruby programming language.

Control flow is a concept in programming that describes how certain pieces of code can be executed and others can be ignored. Boolean logic plays an important part of control flow. If something is true then proceed other wise do something else instead. There are a lot of keywords in ruby that help with this like while, unless, if, else and there are special blocks too such as case statements or ternary statements that can control the flow of information as well. In this instance, depending on the name of the day given different messages will be displayed and all other messages will be ignored.

```ruby
def letter_of_the(day)
  letter = day.capitalize.split(//).first
  case letter
  when 'M'
    p "Monday Funday! Today's letter is #{letter}"
  when 'T'
    p "Get some Ice Tea, Today's letter is #{letter}"
  when 'W'
    p "It's Hump day! Half way there, Today's letter is #{letter}"
  when 'F'
    p "Gotta get down! Today's letter is #{letter}"
  when 'S'
    p "Chill out it's he weekend. Today's letter is #{letter}"
  else
    p "That's not a day!"
  end
end
```

#### [Sources]---
1. [Ruby flow control -- Jan Bodnar](http://zetcode.com/lang/rubytutorial/flowcontrol/)
2. [Control flow -- Computer Hope](https://www.computerhope.com/jargon/c/contflow.htm)

---

#### Question Nine --
###### 	Explain type coercion.
Type coercion is how a programming language deals with data types. some languages have a strong typing meaning that they require you to declare the data type of a variable as you declare it. for example, the whole number `int 7` is different from `str '7'` which is a string. Addition cannot be performed with a string but can be done with a integer. Languages with weak typing interpret the variables data type from the context of what you are trying to do with it. fore example in Ruby if we type `sum = 7+3` ruby will assume that we wants to make the value of `sum` equal to the numerical value ten as oppose to `'7+3'` the string value. You have to be careful of weak typing however because sometime the language will interpret the value we give it as a type that will not work in the functions trying to be executed.

#### [Sources]---
1. [Type Coercion -- Apache Tapestry](https://tapestry.apache.org/type-coercion.html)
2. [Ruby Coercion Protocols Part 2 -- Luca Guidi](https://blog.dnsimple.com/2017/01/ruby-coercion-protocols-part-2/)
3. [Type conversion -- Wikipedia.org](https://en.wikipedia.org/wiki/Type_conversion)

---

#### Question Ten --
###### Describe the data types recognized by the Ruby programming language. In your description you should give example code which uses each data type, and include the name of the Ruby classes which represent each data type.

//////Booleans\
Booleans are represented by two values, true and false. It is with these two values that we implement control flow in code. in Ruby this data type is split into two classes. `TrueClass` and `FalseClass`. Booleans are one of the most fundamental data types as they allow us to evaluate the state of objects in code. Is something greater than? is this a something? all of this is made possible by true and false.

//////Symbols\
Symbols are like a special case of Strings. Symbols are declared by starting the string with a colon. `:this_is_a_symbol` It can have no spaces, the unique aspect of symbols that separates them from strings is that they are uniquely and stored in memory. declaring the same string twice `"twice"` and `"twice"` for example may result in two different strings stored in separate memory locations, but declaring `":twice"` and `"twice"` refers to the same memory location. This creates a performance boost over strings if you don't need the other functionality of strings and makes symbols uniquely suited to the task of being key names for hashes.

//////Numbers\
Ruby can describe a lot of different types of numbers, the basic two are Integers and Floats. Integers are whole numbers from negative infinity to positive infinity and Floats are all of the decimal numbers . Due to the limits of precision involved in a binary system Ruby further splits these classes in Fixnum and Bignum for Integers and Floats into BigDecimal and Float. the "big" variants of this class are to deal with very large or very precise numbers while Fixnum and Float deal with numbers not large enough or that don't require enough precision for a binary counting system to effect the output of the numbers. Interestingly Ruby can also handle complex numbers of the form `3+4i` as well.

//////Strings\
A string in Ruby is an object that holds a collection of characters that represents text based data. On a fundamental level a string is essentially an array of bytes.

//////Arrays\
Ruby-doc.org defines arrays as ordered, interger indexed collections of any object. More simply it is a list of objects that hare ordered by the sequence that they were entered into the list and can be called upon by asking for its position in the list. The indexing for this begins at 0.

//////Hashes\
Hashes are very similar to arrays in that they are ordered lists of any object. the key difference that instead of only using integers to index the items in the list. the index for hashes (commonly known as keys) can be the form of any object type. This makes hashes very powerful as you can associate something much more memorable than and arbitary integer with the information that the index contains.

#### [Sources]---
1. [Ruby data types -- Jan Bodnar](http://zetcode.com/lang/rubytutorial/datatypes/)
2. [Ruby Data types -- JavaTpoint](https://www.javatpoint.com/ruby-data-types)
3. [Ruby | Data Types -- Shivi Aggarwal](https://www.geeksforgeeks.org/ruby-data-types/)
4. [BigDecimal -- James Britt and Neurogami](https://ruby-doc.org/stdlib-2.5.1/libdoc/bigdecimal/rdoc/BigDecimal.html)
5. []()
---
#### Question 11 --
###### Here’s the problem:
*“There is a restaurant serving a variety of food. The customers want to be able to buy food of their choice. All the staff just quit, how can you build an app to replace them?”*
  - Identify the classes you would use to solve the problem
  - Write a short explanation of why you would use the classes you have identified

  ***////// Menu Class***\
  There would have to be some sort of menu class to contain the information about the various products that are available to purchase. But this likely an example of a subclass ItemMenu that would also handle the building of orders, I would also use this class to display a staff menu for adding removing and changing price of items.

  ***////// Product Class***\
  This would hold all the items that were on offer and the information associated with the item. Name, Price, Type (food, drink, utility if like knives and forks or packaging) quantity available.

  ***////// Till Class***\
  This would track the transactions between the restaurant and customers and keep track of change on hand, and the money coming in. it would also update the inventory

  ***////// Info Class***\
  This class would keep track of the information about orders, who placed them, whether they had paid or not, how long had they been waiting, whether the order was complete or pending.

---
#### Question 12 --
###### Identify and explain the error in the following code that is preventing correct execution of the program.
```ruby
celsius = gets
fahrenheit = (celsius * 9 / 5) + 32
print "The result is: "
print fahrenheit
puts "."
```
The error in this code is that we forget to convert the input celsius received from the `gets` command which is a string into an integer so that weh can do math with it. One correct solution is as follows:

```ruby
celsius = gets
fahrenheit = (celsius.to_i * 9 / 5) + 32
print "The result is: "
print fahrenheit
puts "."
```

---
#### Question 13 --
###### [instruction_written_here]
Answer for question written here.

#### [Sources]---
1. [document_name](link_or-URI)
2. []()
3. []()
4. []()
5. []()
---
#### Question 14 --
###### [instruction_written_here]

#### [Sources]---
1. []()
2. []()
3. []()
4. []()
5. []()
---
#### Question 15 --
#### Write pseudocode OR Ruby code for the following problem:
###### *You have access to two variables: raining (boolean) and temperature (integer). If it’s raining and the temperature is less than 15 degrees, print to the screen “It’s wet and cold”, if it is less than 15 but not raining print “It’s not raining but cold”. If it’s greater than or equal to 15 but not raining print “It’s warm but not raining”, and otherwise tell them “It’s warm and raining”.*

```ruby
def question_fifteen(raining, temperature)
  if temperature < 15
    raining ? (puts "It’s wet and cold") : (puts "It’s not raining but cold")
  else
    raining ? (puts "It’s warm and raining") : (puts "It’s warm but not raining")
  end
end
```

---
#### Question 16 --
###### 	An allergy test produces a single numeric score which contains the information about all the allergies the person has (that they were tested for). The list of items (and their value) that were tested are:

  - eggs (1)
  - peanuts (2)
  - shellfish (4)
  - strawberries (8)
  - tomatoes (16)
  - chocolate (32)
  - pollen (64)
  - cats (128)

*So if Tom is allergic to peanuts and chocolate, he gets a score of 34.*

###### Write a program that, given a person’s score can tell them:
    a. whether or not they’re allergic to a given item
    b. the full list of allergies.

```ruby
def main
  # static variables
  max_score = 255
  positive=[]
  alergens = {
    :cats => {:score => 128, :alergic => false},
    :pollen => {:score => 64, :alergic => false},
    :choclate => {:score => 32, :alergic => false},
    :tomatoes => {:score => 16, :alergic => false},
    :strawberries => {:score => 8, :alergic => false},
    :shellfish => {:score => 4, :alergic => false},
    :peanuts => {:score => 2, :alergic => false},
    :eggs => {:score => 1, :alergic => false}
  }

  #prompt alergen score
  begin
    print "Please provide your alergen score: "
    score = gets.strip
    if validate_integer(score)
      score = score.to_i
      score < 0 ? (raise TooLowError, "Cannot have score less than zero.") : ""
      score > max_score ? (raise TooHighError, "Cannot have a score higher than #{max_score}") : ""
    end
  rescue => e
    puts e.message
    retry
  end

  #set true states for alergens indicated by score and creat array of all alergies
  alergens.each do |k,v|
    if score-v[:score] >= 0
      v[:alergic] = true
      positive.push("- #{k}")
      score-=v[:score]
    end
  end

  # either specific alergen or all alergens
  begin
  print "Query specific alergen: "
  alergen = gets.strip
    if validate_string(alergen)
      alergen_sym = alergen.downcase.to_sym
      if alergens.has_key?(alergen_sym) && alergens[alergen_sym][:alergic]
        puts "Yes, you are alergric to #{alergen.upcase}"
      elsif alergen.downcase == "all"
        puts "You are alergic to the following:"
        puts positive
      else
        raise UnrecognisedError, "Sorry, I don't have information on that alergen or it was not spelt correctly."
      end
    end
  rescue => e
    puts e.message
    retry
  end
end

##Validation methods

def validate_integer(input)
    if input.match(/[^\d-].*/).nil?
      true
    else
      raise NotNumericError, "That was not a valid number."
    end
end

def validate_string(input)
  if input.match(/[^a-zA-Z].*/).nil?
    true
  else
    raise InvalidStringError, "That input contained invalid characters."
  end
end

#errors

class NotNumericError < StandardError
end
class TooLowError < StandardError
end
class TooHighError < StandardError
end
class InvalidStringError < StandardError
end
class UnrecognisedError < StandardError
end


main

```
---
