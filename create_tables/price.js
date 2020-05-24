const faker = require('faker')

const inst = `INSERT INTO price (price_before, price_after)
             VALUES`
console.log(inst)
    
const minID_price = 1
const maxID_price = 10                
for (let i = minID_price -1; i < maxID_price; i++) 
{

const price_before = faker.commerce.price()
const price_after = faker.commerce.price()

genInsert_price = `(DEFAULT, '${price_before}', '${price_after}'),`
console.log(genInsert_price)
}
