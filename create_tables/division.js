const faker = require('faker')

const inst = `INSERT INTO division (start_data, desctiplion)
             VALUES`
console.log(inst)

	const minID_division = 1
	const maxID_division = 10
    
	for (let i = minID_division - 1; i < maxID_division; i++) {
        const start_data = faker.date.past(10).toISOString()
        const desctiplion = faker.random.word()
        genInsert_division = `(DEFAULT, '${start_data}', '${desctiplion}'),`
        console.log(genInsert_division)

    }
    