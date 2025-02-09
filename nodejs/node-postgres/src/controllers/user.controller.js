const UserService = require('../services/user.service');

class UserController {
  async getAllUsers(req, res) {
    try {
      const users = await UserService.fetchAllUsers();
      res.json(users);
    } catch (err) {
      console.error('Controller error:', err.stack);
      res.status(500).send({ message: 'Error fetching users.' });
    }
  }
}

module.exports = new UserController();