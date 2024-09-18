CREATE TABLE students (
  student_id int primary key,
  name varchar,
  grade_level int,
  preferred_subjects varchar,
  schedule_conflicts varchar,
  homeroom_teacher varchar
);

CREATE TABLE teachers (
  teacher_id int primary key,
  name varchar,
  subject_taught varchar,
  availability varchar,
  max_capacity int
);

CREATE TABLE subjects (
  subject_code varchar primary key,
  subject_name varchar,
  grade_level int,
  availability varchar,
  prerequisite varchar,
  classroom_type varchar
);

CREATE TABLE classrooms (
  classroom_id int primary key,
  room_name varchar,
  room_type varchar,
  capacity int,
  availability varchar
);

CREATE TABLE timetable (
  timetable_id int primary key,
  student_id int,
  subject_code varchar,
  teacher_id int,
  classroom_id int,
  timeslot varchar
);



*************************INSERT RECORDS*********************************


INSERT INTO Students (Student_ID, Name, Grade_Level, Preferred_Subjects, Schedule_Conflicts, Homeroom_Teacher) VALUES
(1, 'Alice Johnson', 10, '["Math", "Science"]', 'None', 'Mr. Smith'),
(2, 'Bob Evans', 11, '["History", "Math"]', 'None', 'Ms. Lee'),
(3, 'Carol King', 9, '["English", "Art"]', 'None', 'Mr. Brown'),
(4, 'David Wilson', 12, '["Physics", "Math"]', 'None', 'Dr. Green'),
(5, 'Emma Davis', 10, '["Chemistry", "Biology"]', 'None', 'Ms. Lee'),
(6, 'Franklin Adams', 9, '["Math", "PE"]', 'None', 'Mr. Smith'),
(7, 'Grace Hall', 11, '["Chemistry", "Math"]', 'None', 'Mr. Brown'),
(8, 'Hannah Miller', 12, '["History", "English"]', 'None', 'Dr. Green'),
(9, 'Isaac Moore', 10, '["Science", "Art"]', 'None', 'Mr. Smith'),
(10, 'Julia Adams', 11, '["Physics", "Math"]', 'None', 'Ms. Lee');


INSERT INTO Teachers (Teacher_ID, Name, Subject_Taught, Availability, Max_Capacity) VALUES
(1, 'Mr. Smith', 'Math', '["Monday", "Wednesday", "Friday"]', 15),
(2, 'Ms. Lee', 'History', '["Monday", "Tuesday", "Thursday"]', 12),
(3, 'Mr. Brown', 'English', '["Tuesday", "Thursday"]', 10),
(4, 'Dr. Green', 'Physics', '["Wednesday", "Friday"]', 8),
(5, 'Mrs. Black', 'Biology', '["Monday", "Friday"]', 10),
(6, 'Mr. White', 'Chemistry', '["Tuesday", "Thursday"]', 14),
(7, 'Ms. Blue', 'Art', '["Wednesday", "Thursday"]', 8),
(8, 'Mr. Grey', 'PE', '["Tuesday", "Friday"]', 10),
(9, 'Ms. Pink', 'Science', '["Monday", "Wednesday", "Thursday"]', 15),
(10, 'Dr. Violet', 'Math', '["Monday", "Thursday", "Friday"]', 12);


INSERT INTO Subjects (Subject_Code, Subject_Name, Grade_Level, Prerequisite, Classroom_Type) VALUES
('MTH101', 'Math', 10, NULL, 'Regular Room'),
('SCI102', 'Science', 10, NULL, 'Lab'),
('HIS201', 'History', 11, NULL, 'Regular Room'),
('ENG301', 'English', 9, NULL, 'Regular Room'),
('PHY401', 'Physics', 12, 'Math', 'Lab'),
('BIO301', 'Biology', 10, 'Science', 'Lab'),
('CHE402', 'Chemistry', 10, 'Science', 'Lab'),
('ART101', 'Art', 9, NULL, 'Art Room'),
('PE101', 'PE', 9, NULL, 'Gym'),
('MTH201', 'Advanced Math', 11, 'Math', 'Regular Room');


INSERT INTO Classrooms (Classroom_ID, Room_Name, Room_Type, Capacity, Availability) VALUES
(1, 'Room 101', 'Regular Room', 30, '["Monday", "Wednesday", "Friday"]'),
(2, 'Room 102', 'Regular Room', 25, '["Tuesday", "Thursday"]'),
(3, 'Lab 201', 'Lab', 20, '["Monday", "Tuesday", "Thursday"]'),
(4, 'Gym 301', 'Gym', 50, '["Wednesday", "Friday"]'),
(5, 'Art Room 401', 'Art Room', 15, '["Monday", "Wednesday"]'),
(6, 'Room 103', 'Regular Room', 30, '["Tuesday", "Friday"]'),
(7, 'Lab 202', 'Lab', 20, '["Wednesday", "Friday"]'),
(8, 'Room 104', 'Regular Room', 25, '["Monday", "Thursday"]'),
(9, 'Room 105', 'Regular Room', 30, '["Tuesday", "Friday"]'),
(10, 'Lab 203', 'Lab', 20, '["Monday", "Wednesday"]');


INSERT INTO Timetable (Timetable_ID, Student_ID, Subject_Code, Teacher_ID, Classroom_ID, Timeslot) VALUES
(1, 1, 'MTH101', 1, 1, '2024-09-16 09:00:00'),
(2, 2, 'HIS201', 2, 2, '2024-09-16 10:00:00'),
(3, 3, 'ENG301', 3, 1, '2024-09-16 11:00:00'),
(4, 4, 'PHY401', 4, 3, '2024-09-16 12:00:00'),
(5, 5, 'BIO301', 5, 3, '2024-09-16 09:00:00'),
(6, 6, 'PE101', 8, 4, '2024-09-16 10:00:00'),
(7, 7, 'CHE402', 6, 7, '2024-09-16 11:00:00'),
(8, 8, 'ART101', 7, 5, '2024-09-16 12:00:00'),
(9, 9, 'SCI102', 9, 3, '2024-09-16 09:00:00'),
(10, 10, 'MTH201', 1, 1, '2024-09-16 10:00:00');


