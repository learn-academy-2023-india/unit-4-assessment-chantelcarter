# UNIT 4: Ruby Coding Practical Questions
# MINASWAN ✌️

# Create the code that makes all Bike specs pass.
# Run the file with the following command: $ rspec ruby_spec.rb

# Add comments to your code explaining your approach

# ran a test and it doesn't look like it's a good failure.
# ---> An error occurred while loading ./rspec_spec.rb.
# Failure/Error: __send__(method, file)

# LoadError:
#   cannot load such file -- /Users/learnacademy/Desktop/unit-4-assessment-chantelcarter/rspec_spec.rb

class Bike
        # going through the previous rspec challenges, I figured this code would work but i'm still getting a "bad failure" and it's saying "no examples found"
        # just realized i put in the wrong terminal command -____-
    # attr_accessor :bike
   
    # def initialize(bike)
    #     @bike = bike
    # end
        # Finished in 0.00356 seconds (files took 0.07246 seconds to load)
        # 9 examples, 8 failures
        # Failed examples:
        # rspec ./ruby_spec.rb:12 # Bike has a model
        # rspec ./ruby_spec.rb:16 # Bike has two wheels
        # rspec ./ruby_spec.rb:20 # Bike can become a tricycle
        # rspec ./ruby_spec.rb:24 # Bike has a default speed of zero
        # rspec ./ruby_spec.rb:28 # Bike can increase speed by a given amount
        # rspec ./ruby_spec.rb:33 # Bike can decrease speed by a given amount
        # rspec ./ruby_spec.rb:38 # Bike cannot go negative speeds
        # rspec ./ruby_spec.rb:43 # Bike can log all of its current data

        # now i'm going to  add a model attribute
    # attr_accessor :bike, :model
   
    # def initialize(bike, model)
    #     @bike = bike
    #     @model = model
    # end
        # got back 9 failures this time, when previously it was 8
        # going to hard code "Trek" and remove model parameter.
        # attr_accessor :bike, :model
   
    # def initialize(bike)
    #     @bike = bike
    #     @model = 'Trek'
    # end
            # 9 examples, 7 failures
            # going to hard code 2 wheels
        # attr_accessor :bike, :model, :wheels
   
        # def initialize(bike)
        #     @bike = bike
        #     @model = 'Trek'
        #     @wheels = 2
        # end
            # 9 examples, 5 failures
            # going to create a method that changes the number of wheels to 3
        # def tricycle
        #     @wheels = 3
        # end
            # 9 examples, 5 failures
            # going to add current_speed = 0, hard coded.
        # attr_accessor :bike, :model, :wheels, :current_speed
   
        # def initialize(bike)
        #     @bike = bike
        #     @model = 'Trek'
        #     @wheels = 2
        #     @current_speed = 0
        # end

        # def tricycle
        #     @wheels = 3
        # end       
            # 9 examples, 4 failures
            # going to create a method to increase speed
        # attr_accessor :bike, :model, :wheels, :current_speed
   
        # def initialize(bike)
        #     @bike = bike
        #     @model = 'Trek'
        #     @wheels = 2
        #     @current_speed = 0
        # end

        # def tricycle
        #     @wheels = 3
        # end 

        # def pedal_faster(speed)
        #     @current_speed += speed
        # end
            # 9 examples, 3 failures
            # going to create a method that decreases speed.
        # attr_accessor :bike, :model, :wheels, :current_speed
   
        # def initialize(bike)
        #     @bike = bike
        #     @model = 'Trek'
        #     @wheels = 2
        #     @current_speed = 0
        # end

        # def tricycle
        #     @wheels = 3
        # end 

        # def pedal_faster(speed)
        #     @current_speed += speed
        # end

        # def brake(speed)
        #     @current_speed -= speed
        # end 
            # 9 examples, 2 failures
            # going to creat a method to make sure that the speed cannot go negative
        # attr_accessor :bike, :model, :wheels, :current_speed
   
        # def initialize(bike)
        #     @bike = bike
        #     @model = 'Trek'
        #     @wheels = 2
        #     @current_speed = 0
        # end

        # def tricycle
        #     @wheels = 3
        # end 

        # def pedal_faster(speed)
        #     @current_speed += speed
        # end

        # def brake(speed)
        #     @current_speed = [0, @current_speed - speed].max
        # end
            # had to update the brake method, because it would not allow the test to pass.
            # ---> 9 examples, 1 failure
            # going to create a method for the bike info.
        attr_accessor :bike, :model, :wheels, :current_speed
   
        def initialize(bike)
            @bike = bike
            @model = 'Trek'
            @wheels = 2
            @current_speed = 0
        end

        def tricycle
            @wheels = 3
        end 

        def pedal_faster(speed)
            @current_speed += speed
        end

        def brake(speed)
            @current_speed = [0, @current_speed - speed].max
        end

        def bike_info
            "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph."
        end
        # and finally ----> 9 examples, 0 failures
end