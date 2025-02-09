require('dotenv').config({ path: './.env.development' });

const app = require('./server'); // Import the Express app

// Start the server
const port = process.env.APP_PORT;
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});