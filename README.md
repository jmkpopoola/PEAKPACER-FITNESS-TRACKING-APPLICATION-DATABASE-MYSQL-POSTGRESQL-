# PEAKPACER: Fitness Tracking Application

## Overview
PEAKPACER is a cutting-edge fitness tracking application designed to empower users on their health and wellness journey. It offers a comprehensive suite of features, including real-time activity tracking, personalized goal setting, and progress monitoring. With an intuitive user interface, PEAKPACER seamlessly integrates data from various fitness metrics (e.g., step counts, calorie burn, heart rate, sleep patterns), providing actionable insights to enhance fitness routines. PEAKPACER is dedicated to facilitating a holistic and personalized health monitoring experience, encouraging individuals to achieve their fitness goals with precision and motivation.

![PEAKPACER Overview](PeakpacerLogo.png)

## Goals and Purpose
The PEAKPACER Fitness Tracking App is designed to cater to users striving for a healthier, more active lifestyle. Its key objectives are:

1. **Empowering Goal Achievement**: Encourages users to define and pursue personalized fitness goals, such as running longer distances, increasing weight lifting capacity, or achieving health milestones.
2. **Insightful Performance Feedback**: Provides detailed analyses of fitness metrics, helping users identify areas for improvement and offering tailored workout recommendations.
3. **Progress Monitoring and Visualization**: Enables users to track their fitness journey visually, fostering motivation through tangible results.
4. **Accountability and Consistency**: Promotes daily activity tracking to ensure users adhere to routines and make informed adjustments.
5. **Comprehensive Health and Wellness Support**: Acts as a holistic health companion, encouraging healthy habits, stress management, and a balanced lifestyle.

The ultimate aim is to empower users to take charge of their well-being, celebrate achievements, and embark on a fulfilling fitness journey.

## Need for PEAKPACER
The demand for a streamlined, personalized approach to health and fitness monitoring drives PEAKPACER’s development. In today’s fast-paced world, individuals face challenges maintaining a healthy balance due to sedentary lifestyles and time constraints. PEAKPACER addresses this by offering a centralized platform to track activities, set achievable goals, and monitor progress. It goes beyond basic tracking by providing data-driven insights and tailored suggestions, meeting the need for accessible, effective health monitoring.

![App Interface Example](APP%20INTERFACE%20PEAKPACER.jpg)

## Challenges in Monitoring Health and Fitness Goals
PEAKPACER addresses common challenges in health and fitness monitoring:

1. **Lack of Time and Busy Lifestyles**  
   - **Challenge**: Demanding schedules limit time for fitness activities.  
   - **Solution**: PEAKPACER offers quick, efficient tracking to integrate fitness into daily routines.  

2. **Information Overload**  
   - **Challenge**: Abundant health information overwhelms users.  
   - **Solution**: Simplifies data with personalized recommendations based on individual metrics.  

3. **Lack of Motivation and Accountability**  
   - **Challenge**: Staying motivated without support is difficult.  
   - **Solution**: Incorporates goal-setting and progress tracking to keep users engaged.  

4. **Inconsistent Tracking**  
   - **Challenge**: Consistent activity tracking is challenging.  
   - **Solution**: Provides real-time tracking and automated logging for a seamless experience.  

5. **Lack of Personalization**  
   - **Challenge**: Generic plans don’t suit individual preferences.  
   - **Solution**: Tailors recommendations to users’ unique profiles and goals.  

6. **Difficulty in Setting Realistic Goals**  
   - **Challenge**: Unrealistic goals lead to frustration.  
   - **Solution**: Assists in setting achievable, personalized milestones.  

![Challenge Illustration](images/image3.jpeg)

## Database Structure
The database, designed using Draw.io, supports MySQL and Postgres SQL. Key tables include `EXERCISECATEGORY` (primary key: `CategoryID`) and `EXERCISE`, linked via foreign keys for efficient categorization of exercises (e.g., cardio, strength, flexibility). The schema enables robust data management for user activities and goals.

![Database Schema](images/image2.png)

## Query Interpretations
The application uses 10 sample SQL queries to manage data, including:
- Retrieving user data
- Using `AS`, `OR`, `AND`, `GROUP BY`, and `HAVING` keywords
- Performing `LEFT`, `RIGHT`, and `INNER` joins
- Two queries with aggregate functions for metrics analysis

SQL scripts and their interpretations are available in `/sql/` and `/queries/`, explaining functionality and execution significance.

## Challenges Faced
During development, a key challenge was implementing `EXERCISECATEGORY` as a primary key to organize exercises by body part and type (e.g., cardio, flexibility). This was critical for user navigation and goal customization.  

**Solution**: A new table, `EXERCISECATEGORY`, was created with `CategoryID` as the primary key and `categoryname` as an attribute. `CategoryID` was added as a foreign key to the `EXERCISE` table. The schema was updated, and tests were re-run in MySQL Workbench to ensure functionality.

## Future Enhancements
- **Personalized Music Integration**: Sync with music apps for motivational playlists.
- **Interactive Virtual Assistant**: Provide dynamic guidance based on user progress.
- **Dynamic Aerobics and Dance Sets**: Add diverse workout routines for broader appeal.
- **Visual Learning via Animated Demonstrations**: Offer visual guides to ensure proper exercise form and reduce injury risk.

## Conclusion
After extensive queries, testing, and reliability checks, PEAKPACER was summarized in a PowerPoint presentation, available in `/presentation/`. The slides highlight the application’s development, features, and impact.

![Presentation Slide 1](images/image5.jpeg)
![Presentation Slide 2](images/image6.jpeg)
![Presentation Slide 3](images/image7.jpeg)
![Presentation Slide 4](images/image8.jpeg)
![Presentation Slide 5](images/image9.jpeg)
![Presentation Slide 6](images/image10.jpeg)
![Presentation Slide 7](images/image11.jpeg)
![Presentation Slide 8](images/image12.jpeg)

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/<your-username>/peakpacer.git
