# create class
class IOString():

	# constructor to set default value
    def __init__(self):
        self.str1 = ""

	# function to get input from user
    def get_String(self):
        self.str1 = input("Enter String : ")

	# function to print the string in upper case
    def print_String(self):
        print("Result is :", self.str1.upper())

# Object creation
str1 = IOString()

# Call functions
str1.get_String()
str1.print_String()

# Create Class
class Employee:
  
    # Initializing 
    def __init__(self):
        print('Employee created')
  
    # Calling destructor
    def __del__(self):
        print("Destructor called")
  
def Create_obj():
    print('Making Object...')
    obj = Employee()
    print('function end...')
    return obj
  
print('Calling Create_obj() function...')
obj = Create_obj()
print('Program End...')

# create a class
class pair_elements:
	
	def twoSum(self, nums, target):
		# create an empty dictionary
		lookup = {}

		# Iterate through the tuple
		for i, num in enumerate(nums):
			if target - num in lookup:
				return (lookup[target - num], i )
			lookup[num] = i

# take input of dum from the user
value = int(input("Enter sum for which you want to make this search : "))
print("index1=%d, index2=%d" % pair_elements().twoSum((10,20,30,40,50,60,70),value))

# Daily Data Helper
 
# PART 1: Create a class with methods
class DailyMessage:
 
    # Constructor to set a default value
    def __init__(self):
        self.message = ""
 
    # Method to get input from the user
    def get_message(self):
        self.message = input("Enter today's message: ")
 
    # Method to print the message in uppercase
    def print_message(self):
        print("Message in uppercase:", self.message.upper())
 
 
# PART 2: Create an object and call methods
daily_text = DailyMessage()
daily_text.get_message()
daily_text.print_message()
 
 
# PART 3: Create a class to show constructor and destructor
class HelperSession:
 
    # Constructor runs when the object is created
    def __init__(self):
        print("Daily Data Helper session created")
 
    # Destructor runs when the object is deleted
    def __del__(self):
        print("Daily Data Helper session ended")
 
 
def create_session():
    print("Making helper session...")
    session = HelperSession()
    print("Session is ready...")
    return session
 
 
print("")
print("Calling create_session() function...")
session_obj = create_session()
print("Program is still running...")
 
 
# PART 4: Create a class that searches for two numbers using enumerate()
class PairFinder:
 
    def find_pair(self, numbers, target):
        lookup = {}
 
        # enumerate() gives both index and value
        for index, number in enumerate(numbers):
            needed_number = target - number
 
            if needed_number in lookup:
                return (lookup[needed_number], index)
 
            lookup[number] = index
 
        return None
 
 
# PART 5: Take input and search for a pair
numbers = (10, 20, 30, 40, 50, 60, 70)
 
target_value = int(input("Enter target sum to search: "))
 
result = PairFinder().find_pair(numbers, target_value)
 
if result is not None:
    print("index1=%d, index2=%d" % result)
else:
    print("No matching pair found.")
 
# PART 6: Delete the session object to call the destructor
del session_obj
print("Program End")
