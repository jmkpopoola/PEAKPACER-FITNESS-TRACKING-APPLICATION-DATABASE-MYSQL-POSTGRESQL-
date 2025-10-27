CREATE DATABASE PeakPacer;
USE PeakPacer;
SELECT DATABASE();
-- Create User Table
CREATE TABLE PeakPacerUser (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Age INT,
    Weight DECIMAL(5,2),
    Height DECIMAL(5,2),
    FitnessGoals VARCHAR(255),
    UNIQUE (Username),
    UNIQUE (Email)
);

-- Create Exercise Table
CREATE TABLE PeakPacerExercise (
    ExerciseID INT PRIMARY KEY AUTO_INCREMENT,
    ExerciseName VARCHAR(255) NOT NULL,
    Category VARCHAR(50),
    DifficultyLevel VARCHAR(20)
);

-- Create Workout Table
CREATE TABLE PeakPacerWorkout (
    WorkoutID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Duration INT,
    CaloriesBurned INT,
    FOREIGN KEY (UserID) REFERENCES PeakPacerUser(UserID)
);

-- Create WorkoutDetail Table
CREATE TABLE PeakPacerWorkoutDetail (
    WorkoutDetailID INT PRIMARY KEY AUTO_INCREMENT,
    WorkoutID INT,
    ExerciseID INT,
    Sets INT,
    Reps INT,
    Weight DECIMAL(5,2),
    FOREIGN KEY (WorkoutID) REFERENCES PeakPacerWorkout(WorkoutID),
    FOREIGN KEY (ExerciseID) REFERENCES PeakPacerExercise(ExerciseID)
);

-- Create UserAchievement Table
CREATE TABLE PeakPacerUserAchievement (
    AchievementID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    AchievementName VARCHAR(255) NOT NULL,
    AchievementDate DATE,
    FOREIGN KEY (UserID) REFERENCES PeakPacerUser(UserID)
);


-- Create ExerciseCategory Table
CREATE TABLE PeakPacerExerciseCategory (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(50) NOT NULL
);

-- Add a foreign key reference to Exercise table
ALTER TABLE PeakPacerExercise
ADD COLUMN CategoryID INT,
ADD CONSTRAINT fk_category
    FOREIGN KEY (CategoryID) REFERENCES PeakPacerExerciseCategory(CategoryID);

-- Create Meal Table
CREATE TABLE PeakPacerMeal (
    MealID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    MealName VARCHAR(255) NOT NULL,
    MealDate DATE,
    CaloriesConsumed INT,
    FOREIGN KEY (UserID) REFERENCES PeakPacerUser(UserID)
);

-- Create MealDetail Table
CREATE TABLE PeakPacerMealDetail (
    MealDetailID INT PRIMARY KEY AUTO_INCREMENT,
    MealID INT,
    FoodItem VARCHAR(255) NOT NULL,
    Quantity DECIMAL(5,2),
    CaloriesPerUnit INT,
    FOREIGN KEY (MealID) REFERENCES PeakPacerMeal(MealID)
);

-- Insert test data into PeakPacerUser table
INSERT INTO PeakPacerUser (Username, Email, Password, Age, Weight, Height, FitnessGoals)
VALUES 
    ('Olamide', 'olamidequadri66@gmail.com', 'olami', 25, 70.5, 175.0, 'Build Muscle'),
    ('Esther', 'bojomonike@gmail.com', 'esther', 22, 65.0, 168.0, 'Flat Tummy'),
    ('Ganiu', 'Garnimakus@gmail.com', 'geelong', 25, 75.0, 180.0, 'Stay fit'),
    ('Ore', 'oreoluwabakare25@gmail.com', 'oreoluwa', 22, 68.0, 172.0, 'glute Enlargement'),
    ('Ayobami', 'ayobamisalaumuhammed@gmail.com', 'ayobami', 35, 80.0, 185.0, 'Maintain health'),
	('Adams', 'ganiadams@gmail.com', 'adams', 24, 73.0, 172.0, 'Build Muscle'),
    ('Bishi', 'Bishibaby@gmail.com', 'Bishi', 35, 80.0, 185.0, 'Maintain health');

-- Insert test data into PeakPacerExerciseCategory table
INSERT INTO PeakPacerExerciseCategory (CategoryName)
VALUES 
    ('Cardio'),
    ('Strength Training'),
    ('Flexibility'),
    ('HIIT'),
    ('CrossFit');

-- Insert test data into PeakPacerExercise table
INSERT INTO PeakPacerExercise (ExerciseName, Category, DifficultyLevel, CategoryID)
VALUES 
    ('Running', 'Cardio', 'Intermediate', 1),
    ('Bench Press', 'Strength Training', 'Advanced', 2),
    ('Yoga', 'Flexibility', 'Beginner', 3),
    ('Tabata', 'HIIT', 'Intermediate', 4),
    ('Deadlift', 'Strength Training', 'Advanced', 2);

-- Insert test data into PeakPacerUserAchievement table
INSERT INTO PeakPacerUserAchievement (UserID, AchievementName, AchievementDate)
VALUES 
    (1, 'Ran 5 miles without stopping', '2024-02-01'),
    (2, 'Completed 30 push-ups in a single session', '2024-02-05'),
    (3, 'Achieved a 9-minute plank', '2024-02-10'),
    (4, 'Completed a marathon', '2024-02-15'),
    (5, 'Climbed 27 flights of stairs', '2024-02-20'),
	(6, 'Completed a marathon', '2024-02-15'),
    (7, 'Climbed 34 flights of stairs', '2024-02-20');


-- Insert test data into PeakPacerWorkout table
INSERT INTO PeakPacerWorkout (UserID, Duration, CaloriesBurned)
VALUES 
    (1, 45, 300),
    (2, 60, 500),
    (3, 30, 200),
    (4, 120, 800),
    (5, 90, 600),
	(6, 110, 800),
    (7, 85, 600);

-- Insert test data into PeakPacerWorkoutDetail table
INSERT INTO PeakPacerWorkoutDetail (WorkoutID, ExerciseID, Sets, Reps, Weight)
VALUES 
    (1, 1, 1, 5, 0),
    (2, 2, 4, 10, 150),
    (3, 3, 1, 1, 0),
    (4, 4, 8, 20, 0),
    (5, 5, 5, 8, 200);

-- Insert test data into PeakPacerMeal table
INSERT INTO PeakPacerMeal (UserID, MealName, MealDate, CaloriesConsumed)
VALUES 
    (1, 'Breakfast', '2024-02-01', 500),
    (2, 'Lunch', '2024-02-02', 700),
    (3, 'Dinner', '2024-02-03', 600),
    (4, 'Snack', '2024-02-04', 200),
    (5, 'Brunch', '2024-02-05', 800),
	(6, 'Dessert', '2024-02-04', 250),
    (7, 'Lunch', '2024-02-05', 750);

-- Insert test data into PeakPacerMealDetail table
INSERT INTO PeakPacerMealDetail (MealID, FoodItem, Quantity, CaloriesPerUnit)
VALUES 
    (1, 'Oatmeal', 1, 100),
    (2, 'Grilled Chicken Salad', 1, 200),
    (3, 'Salmon with Quinoa', 1, 300),
    (4, 'Yogurt with Berries', 1, 50),
    (5, 'Avocado Toast', 1, 400),
	(4, 'Milk shake', 1, 50),
    (5, 'Plaintain Toast', 1, 400);
    
  