----------------------------------------
-- 1

SELECT users.name as "name", cities.name as city 
FROM cities
JOIN users 
ON users."cityId" = cities.id 
AND cities.name = 'Rio de Janeiro';


----------------------------------------
-- 2

SELECT writer.name as writer, 
recipient.name as recipient,
testimonials."message" as "message"
FROM testimonials
JOIN users writer
ON testimonials."writerId" = writer.id
JOIN users recipient
ON testimonials."recipientId" = recipient.id;

----------------------------------------
-- 3

SELECT users.id as "id", 
users.name as "name",
schools.name as school,
courses.name as course
FROM educations
JOIN users 
ON educations."userId" = users.id
JOIN schools
ON educations."schoolId" = schools.id
JOIN courses
ON educations."courseId" = courses.id
WHERE users.id = '30' 
AND educations.status = 'finished';


----------------------------------------
-- 4

SELECT u.id as "id",
u.name as "name", 
r.name as "role",
comp.name as "company",
experiences."startDate" as "startDate"
FROM experiences
JOIN users u
ON experiences."userId" = u.id
JOIN roles r
ON experiences."roleId" = r.id
JOIN companies comp
ON experiences."companyId" = comp.id
WHERE u.id = '50' 
AND experiences."endDate" is null;