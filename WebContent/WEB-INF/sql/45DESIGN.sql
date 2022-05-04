-- 제2정규형(second normal form, 2nf)
-- 제1정규형이어야 하고,
-- 부분적 함수의존이 없다.
	-- 키가 아닌 열이 합성키의 일부에 종속되는 경우 (책 363쪽)
   
-- 제3정규형(third normal form, 3nf) (책 374쪽)
-- 제2정규형이어야 하고,
-- 이행적 종속이 없다. (364쪽)
	-- 키가 아닌 열이 키가 아닌 다른 열에 종속되는 경우
   
   CREATE TABLE courses (
		course_id INT PRIMARY KEY,
      course_name VARCHAR(255),
      instructor VARCHAR(255),
      instructor_phone VARCHAR(255)
   );
   DROP TABLE courses;
   
   DROP TABLE course;
   CREATE TABLE course (
		course_id INT PRIMARY Key AUTO_INCREMENT,
      course_name VARCHAR(255),
      instructor_id INT,
      FOREIGN KEY (instructor_id) REFERENCES instructor(instructor_id)
	);
   
   CREATE TABLE instructor (
		instructor_id INT PRIMARY KEY AUTO_INCREMENT,
      instructor_name VARCHAR(255),
      instructor_phone VARCHAR(255)
   );