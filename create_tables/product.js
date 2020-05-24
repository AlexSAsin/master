const faker = require('faker')

const inst = `INSERT INTO product (name, quality, count_in_storage, description)
             VALUES`
console.log(inst)
              

const minID_product = 1
const maxID_product = 10
for (let i = minID_product -1; i < maxID_product; i++) 
{

const name = faker.commerce.productName()
const quality = faker.commerce.productAdjective() //not exectly understent
const count_in_storage = faker.random.number(500)
const description = faker.commerce.product() //not exectly understent

genInsert_product = `(DEFAULT, '${name}', '${quality}', ${count_in_storage}, '${description}'),`
console.log(genInsert_product)
}
