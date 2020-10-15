const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const cohortName = process.argv[2];
const limit = process.argv[3] || 5;

// Store all potentially malicious values in an array. 
const values = [`%${cohortName}%`, limit];

const queryString = `
  Select distinct teachers.name as teacher,cohorts.name as cohort
  from teachers,assistance_requests,cohorts,students 
  where assistance_requests.teacher_id = teachers.id 
  and assistance_requests.student_id = students.id 
  and students.cohort_id = cohorts.id 
  and cohorts.name LIKE $1
  LIMIT $2;
  `;

pool.query(queryString, values).then(res => {
  res.rows.forEach(row => {
    console.log(`${row.cohort}: ${row.teacher}`);
  })
});

// pool.query(`
// Select distinct teachers.name as teacher,cohorts.name as cohort
// from teachers,assistance_requests,cohorts,students 
// where assistance_requests.teacher_id = teachers.id 
// and assistance_requests.student_id = students.id 
// and students.cohort_id = cohorts.id 
// and cohorts.name = '${process.argv[2] || 'JUL02'}'
// ORDER BY teachers.name;
// `)
// .then(res => {
//   res.rows.forEach(row => {
//     console.log(`${row.cohort}: ${row.teacher}`);
//   })
// });