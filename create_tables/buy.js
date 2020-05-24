const faker = require('faker')

const inst = `INSERT INTO buy (create_data, desctiplion)
             VALUES`
console.log(inst)

	const minID_buy = 1
	const maxID_buy = 10
    
	for (let i = minID_buy - 1; i < maxID_buy; i++) {
        const create_data = faker.date.past(10).toISOString()
       // var cr = create_data.slice(0, 10)
       // const create_time = faker.date.past().toISOString()
       // var ct = create_time.slice(11, 19)
        
        genInsert_buy = `(DEFAULT, '${create_data}'),`
        console.log(genInsert_buy)

    }
    