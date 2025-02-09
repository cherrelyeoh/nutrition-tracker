const {Client} = require('pg');
const dbConfig = require('../../config/db.config');

class UserRepository {

    async getAllUsers() {
        const client = new Client(dbConfig);

        try {
            await client.connect();
            const result = await client.query('SELECT * FROM users');
            return result.rows;
        } catch (err){
            console.log ('Error');
            throw new Error ('Error fetching Users from database');
        } finally {
            await client.end();
        }
    }
    
}

module.exports = new UserRepository();