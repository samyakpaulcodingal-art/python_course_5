# PART 1: Create the parent class with shared family traits
class FamilyMember:
    def __init__(self, eye_color, height_cm):
        self.eye_color = eye_color
        self.height_cm = height_cm

    def show_traits(self):
        print("Eye Color:", self.eye_color)
        print("Height (cm):", self.height_cm)

# PART 2: Create the child class that inherits from FamilyMember
class Kid(FamilyMember):

    # PART 3: Give Kid its own details, plus the inherited traits
    def __init__(self, name, age, eye_color, height_cm):
        self.name = name
        self.age = age
        super().__init__(eye_color, height_cm)

    # PART 4: Override show_traits to add the kid's own details too
    def show_traits(self):
        print("Name:", self.name)
        print("Age:", self.age)
        super().show_traits()

    # PART 5: Add a brand new method that only Kid has
    def favorite_hobby(self, hobby):
        print(self.name, "loves", hobby)

# PART 6: Create a Kid object with real family trait values
child = Kid("Maya", 10, "brown", 140)

# PART 7: Call the overridden method and the new method
child.show_traits()
child.favorite_hobby("painting")

# PART 8: Check whether Kid is really a subclass of FamilyMember
print("Is Kid a subclass of FamilyMember?", issubclass(Kid, FamilyMember))



# PART 1: Create the parent class with shared family traits
class FamilyMember:
    def __init__(self, eye_color, height_cm):
        self.eye_color = eye_color
        self.height_cm = height_cm

    def show_traits(self):
        print("Eye Color:", self.eye_color)
        print("Height (cm):", self.height_cm)

# PART 2: Create the child class that inherits from FamilyMember
class Kid(FamilyMember):

    # PART 3: Give Kid its own details, plus the inherited traits
    def __init__(self, name, age, eye_color, height_cm):
        self.name = name
        self.age = age
        super().__init__(eye_color, height_cm)

    # PART 4: Override show_traits to add the kid's own details too
    def show_traits(self):
        print("Name:", self.name)
        print("Age:", self.age)
        super().show_traits()

    # PART 5: Add a brand new method that only Kid has
    def favorite_hobby(self, hobby):
        print(self.name, "loves", hobby)

# PART 6: Create a Kid object with real family trait values
child = Kid("Maya", 10, "brown", 140)

# PART 7: Call the overridden method and the new method
child.show_traits()
child.favorite_hobby("painting")

# PART 8: Check whether Kid is really a subclass of FamilyMember
print("Is Kid a subclass of FamilyMember?", issubclass(Kid, FamilyMember))




# PART 1: Create the parent class with shared vehicle details
class Vehicle:
    def __init__(self, brand, max_speed):
        self.brand = brand
        self.max_speed = max_speed

    def show_details(self):
        print("Brand:", self.brand)
        print("Max Speed:", self.max_speed, "km/h")

# PART 2: Create the child class that inherits from Vehicle
class Car(Vehicle):

    # PART 3: Give Car its own details, plus the inherited vehicle details
    def __init__(self, model, seats, brand, max_speed):
        self.model = model
        self.seats = seats
        super().__init__(brand, max_speed)

    # PART 4: Override show_details to add the car's own details too
    def show_details(self):
        print("Model:", self.model)
        print("Seats:", self.seats)
        super().show_details()

    # PART 5: Add a brand new method that only Car has
    def fuel_type(self, fuel):
        print(self.model, "uses", fuel)

# PART 6: Create a Car object with real vehicle values
my_car = Car("City Rider", 5, "Honda", 180)

# PART 7: Call the overridden method and the new method
my_car.show_details()
my_car.fuel_type("petrol")

# PART 8: Check whether Car is really a subclass of Vehicle
print("Is Car a subclass of Vehicle?", issubclass(Car, Vehicle))
