const faker = require('faker')

const insrt = `INSERT INTO supplier (firm, addres, phone, email)
                    VALUES`
console.log(insrt)

for (let i = 0; i < 10; i++) 
{
const firm = faker.company.companyName()
const addres = faker.address.city()
const phone = faker.phone.phoneNumber()
const email = faker.internet.email()

const genInsert_supplier = `(DEFAULT, '${firm}', '${addres}','${phone}', '${email}'),`
console.log(genInsert_supplier)
}

