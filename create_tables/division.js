const faker = require('faker')

const inst = `INSERT INTO division (create_data, desctiplion)
             VALUES`
console.log(inst)

	const minID_division = 1
	const maxID_division = 10
    
	for (let i = minID_division - 1; i < maxID_division; i++) {
        const start_data = faker.date.past(10).toISOString()
        var sd = start_data.slice(0, 10)
        name = faker.company.bsBuzz
        desctiplion = faker.random.word()
        genInsert_division = `(DEFAULT, '${sd}', '${ct}'),`
        console.log(genInsert_division)

    }
    