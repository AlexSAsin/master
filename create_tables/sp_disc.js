const faker = require('faker')

const inst = `INSERT INTO special_discount (name, desctiplion)
             VALUES`
console.log(inst)

	const minID_sp_disc = 1
	const maxID_sp_disc = 10
    
	for (let i = minID_sp_disc - 1; i < maxID_sp_disc; i++) {
		const name = faker.random.words()
        const desctiplion = faker.random.words()
        
        genInsert_sp_disc = `(DEFAULT, '${name}', '${desctiplion}'),`
        console.log(genInsert_sp_disc)

    }
    