const { Pool } = require("pg");
const pool = new Pool({
  user: "vagrant",
  password: "123",
  host: "localhost",
  database: "bootcampx",
});
const queryString = `
    SELECT DISTINCT teachers.name as teacher, cohorts.name as name
    FROM teachers
    JOIN assistance_requests
    ON teachers.id = teacher_id
    JOIN students
    ON students.id = student_id
    JOIN cohorts
    ON cohorts.id = cohort_id
    WHERE cohorts.name LIKE  $1
    ORDER BY teacher
    LIMIT $2;
`;
const cohortName = process.argv[2];
const limit = process.argv[3];
const values = [`%${cohortName}%`, limit];

pool
  .query(queryString, values)
  .then((res) => {
    res.rows.forEach((user) => {
      console.log(`${user.name}: ${user.teacher} `);
    });
  })

  .catch((err) => console.error("query error", err.stack));
