# Class creation
class myClass:

	# private variable
	__privateVar = 27;

	# private method
	def __privMeth(self):
		print("I'm inside class myClass")

	# Function to print value of private variable
	def hello(self):
		print("Private Variable value: ",myClass.__privateVar)

# Object creation and method call
foo = myClass()
foo.hello()
foo.__privMeth
class Computer:

    def __init__(self):
        self.__maxprice = 900

    def sell(self):
        print("Selling Price: {}".format(self.__maxprice))

    def setMaxPrice(self, price):
        self.__maxprice = price

c = Computer()
c.sell()

# change the price
c.__maxprice = 1000
c.sell()

# using setter function
c.setMaxPrice(1000)
c.sell()

# Create class
class Point:
    def __init__(self, x=0, y=0):
        self.x = x
        self.y = y

	# Method to print points in coordinate format
    def __str__(self):
        return "({0}, {1})".format(self.x, self.y)

# Create Object
p1 = Point(2, 3)
print(p1)


# Account PIN Safety Checker
 
# PART 1: Create a class with private data
class Account:
 
    def __init__(self, owner, pin):
        self.owner = owner
        self.__pin = pin   # private attribute
 
    # PART 2: Private data can be used safely inside the class
    def show_pin_status(self):
        print("Account Owner:", self.owner)
        print("PIN is safely stored inside the class.")
 
    # PART 3: Setter method to update private data safely
    def set_pin(self, new_pin):
        if len(new_pin) == 4 and new_pin.isdigit():
            self.__pin = new_pin
            print("PIN updated successfully.")
        else:
            print("Invalid PIN. PIN must be exactly 4 digits.")
 
    # PART 4: Method to check the PIN
    def check_pin(self, entered_pin):
        if entered_pin == self.__pin:
            print("Access granted.")
        else:
            print("Access denied.")
 
    # PART 5: Special function used by print()
    def __str__(self):
        return "Account holder: " + self.owner
 
 
# PART 6: Create an object
my_account = Account("Riya", "1234")
 
# PART 7: Print the object using __str__()
print(my_account)
 
# PART 8: Access private data safely inside the class
my_account.show_pin_status()
 
# PART 9: Try to change the private PIN directly from outside
my_account.__pin = "9999"
print("Tried changing PIN directly from outside.")
 
# PART 10: Check if the real private PIN changed
my_account.check_pin("9999")
my_account.check_pin("1234")
 
# PART 11: Update the private PIN safely using the setter
my_account.set_pin("9999")
 
# PART 12: Check the updated PIN
my_account.check_pin("9999")
