  -- Query to Retrieve Users
    SELECT * FROM PeakPacerUser;
    
    -- Query with 'AS' Keyword
    SELECT Username AS UserName, FitnessGoals AS Goals FROM PeakPacerUser;

    -- Query with 'OR' Keyword
    SELECT *
FROM PeakPacerUser
WHERE UserID IN (
    SELECT UserID
    FROM PeakPacerWorkout
    GROUP BY UserID
    HAVING AVG(Duration) > 60
)
OR UserID IN (
    SELECT UserID
    FROM PeakPacerExercise
    WHERE Category = 'Cardio' OR Category = 'HIIT'
);

-- Query with 'AND' Keyword
SELECT *
FROM PeakPacerUser
WHERE UserID IN (
    SELECT UserID
    FROM PeakPacerWorkout
    GROUP BY UserID
    HAVING AVG(Duration) > 30
)
AND UserID IN (
    SELECT UserID
    FROM PeakPacerExercise
    WHERE Category = 'Strength Training'
)
AND UserID IN (
    SELECT UserID
    FROM PeakPacerExercise
    WHERE Category = 'Flexibility'
);


  -- Queries with Aggregate Functions
  SELECT SUM(CaloriesBurned) AS TotalCaloriesBurned FROM PeakPacerWorkout;
SELECT AVG(Weight) AS AverageWeightLifted FROM PeakPacerWorkoutDetail;

-- Query with 'GROUP BY' Keyword
SELECT UserID, SUM(CaloriesBurned) AS TotalCaloriesBurned
FROM PeakPacerWorkout
GROUP BY UserID;

-- Query with 'HAVING' Keyword
SELECT UserID, AVG(Duration) AS AverageDuration
FROM PeakPacerWorkout
GROUP BY UserID
HAVING AverageDuration > 60;

-- Query with LEFT JOIN
SELECT e.ExerciseName, e.Category, ec.CategoryName
FROM PeakPacerExercise e
LEFT JOIN PeakPacerExerciseCategory ec ON e.CategoryID = ec.CategoryID;

-- Query with INNER JOIN
SELECT u.Username, ua.AchievementName
FROM PeakPacerUser u
INNER JOIN PeakPacerUserAchievement ua ON u.UserID = ua.UserID;





