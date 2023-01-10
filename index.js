const express = require('express');
const chalk = require('chalk');
const bodyParser = require('body-parser');
const cors = require('cors');
const knex = require('knex');

try {
  require('./load_env');
  const app = express();

  const api = require('./routes');

  const port = process.env.PORT || 3002;

  app.use(bodyParser.json({ limit: '50mb' }));
  app.use(bodyParser.urlencoded({ extended: true }));
  const whitelist = ['https://nimble-blancmange-426fdb.netlify.app', 'https://gemstar-engineering-services.netlify.app', 'http://localhost:3000'];
  const corsOptions = {
    credentials: true, // This is important.
    origin: (origin, callback) => {
      if(whitelist.includes(origin))
        return callback(null, true)

        callback(new Error('Not allowed by CORS'));
    }
  }
  app.use(cors(corsOptions));

  app.get('/', (req, res) => {
    res.send('Server is Running');
  });

  app.use('/', api);

  app.use(express.static("uploads"));

  (app).listen(port, () => {
    console.log(chalk.green(`Server started on port ${port}`));
  });

} catch (err) {
  console.log(err);
}
