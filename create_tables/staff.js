const faker = require('faker')

const inst = `INSERT INTO staff (id, name, surname, contacts, birth,residence_permit, timetable)
             VALUES`
console.log(inst)

	const minID_staff = 1
	const maxID_staff = 10
    
	for (let i = minID_staff - 1; i < maxID_staff; i++) {
		const name = faker.name.firstName()
		const surname = faker.name.lastName()
		const contacts = faker.phone.phoneNumber()
        const birth = faker.date.past().toISOString()
        const residence_permit = faker.address.streetAddress()
        const timetable = faker.date.weekday()
		
        genInsert_staff = `(DEFAULT, '${name}', '${surname}', '${contacts}', '${birth}', '${residence_permit}', '${timetable}'),`
        console.log(genInsert_staff)

    }
    