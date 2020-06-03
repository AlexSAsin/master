const faker = require('faker')

const inst = `INSERT INTO timetable (id, staff_id, start, finish)
VALUES`
console.log(inst)

const minID_timetable = 1
const maxID_timetable = 10

for (let i = minID_timetable - 1; i < maxID_timetable; i++)
{
const start = faker.date.past(10).toISOString()
const finish = faker.date.past(10).toISOString()

genInsert_timetable = `(DEFAULT, DEFAULT, '${start}', '${finish}'),`
console.log(genInsert_timetable)
}
