-- Step 1: custom ENUM type for exercise habits
CREATE TYPE activity_level AS ENUM ('LOW', 'MEDIUM', 'HIGH');

-- Step 2: source table to accept raw CSV data
-- columns are VARCHAR to ensure the import succeeds without data type errors.
CREATE TABLE patients_source (
    age VARCHAR(255),
    gender VARCHAR(255),
    blood_pressure VARCHAR(255),
    cholesterol_level VARCHAR(255),
    exercise_habits VARCHAR(255),
    smoking VARCHAR(255),
    family_heart_disease VARCHAR(255),
    diabetes VARCHAR(255),
    bmi VARCHAR(255),
    high_blood_pressure VARCHAR(255),
    low_hdl_cholesterol VARCHAR(255),
    high_ldl_cholesterol VARCHAR(255),
    alcohol_consumption VARCHAR(255),
    stress_level VARCHAR(255),
    sleep_hours VARCHAR(255),
    sugar_consumption VARCHAR(255),
    triglyceride_level VARCHAR(255)
);

-- Step 3: final, clean table with the best data types (decided during mapping phase)
CREATE TABLE patients_clean (
    id SERIAL PRIMARY KEY,
    age INTEGER,
    gender VARCHAR(20),
    blood_pressure INTEGER,
    cholesterol_level INTEGER,
    exercise_habits activity_level,
    is_smoker BOOLEAN,
    has_family_heart_disease BOOLEAN,
    has_diabetes BOOLEAN,
    bmi FLOAT,
    has_high_blood_pressure BOOLEAN,
    low_hdl_cholesterol INTEGER,
    high_ldl_cholesterol INTEGER,
    drinks_alcohol BOOLEAN,
    stress_level INTEGER,
    sleep_hours FLOAT,
    sugar_consumption INTEGER,
    triglyceride_level INTEGER
);
