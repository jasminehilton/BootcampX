const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const students.cohort_id = process.argv[2];
const order = process.argv[3] || 5;
// Store all potentially malicious values in an array.
const values = [`%${students.cohort_id}%`, order];

const queryString = `
SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
FROM assistance_requests
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
// WHERE cohorts.name = '${process.argv[2] || 'JUL02'}'
WHERE cohorts.name = $1
// ORDER BY teachers.name;
ORDER BY $2;
`;
pool.query(queryString, values)
  .then(res => {
    res.rows.forEach(row => {
      console.log(`${row.name} ${row.name}`);
    });
  }).catch(err => console.error('query error', err.stack));

