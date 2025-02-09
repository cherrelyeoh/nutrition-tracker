const UserRepository = require('../repository/user.repository');

class UserService {
    async fetchAllUsers() {
        try {
            const users = await UserRepository.getAllUsers();
            return users;
        } catch (err) {
            console.error('UserService error - fetchAllUsers()', err.stack);
            throw new Error('Error fetching users.');
        }
    }
}

module.exports = new UserService();