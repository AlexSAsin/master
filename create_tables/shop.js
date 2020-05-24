const faker = require('faker')

const inst = `INSERT INTO shop (name, town, street, house, open_date, close_date)
                    VALUES`
console.log(inst)
                 
const minID_shop = 1
const maxID_shop = 10
for (let i = minID_shop - 1; i < maxID_shop; i++) 
{
const name = faker.name.firstName()
const town = faker.address.city()
const street = faker.address.streetName()
const house = faker.random.number(95)
const open_date = faker.date.past(10).toISOString()
const close_date = faker.date.past(10).toISOString()

genInsert_shop = `(DEFAULT, '${name}', '${town}', '${street}', ${house}, '${open_date}', '${close_date}'),`
console.log(genInsert_shop)
}
