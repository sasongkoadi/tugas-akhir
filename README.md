# Motorcycle Workshop Resfull API using Postgres

This is backend for registration service at Motorcycle Workshop

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

This application need

```
node
postgres
```

### Installing

A step by step series of examples that tell you have to get a development env running

```
git clone git@github.com:sasongkoadi/res-posgres.git

cd res-posgres

npm install
```
Open Postgres and create user

```sql
create user yourusername with superuser password 'your password';
```

Create database workshop

```sql
create database workshop;
```

Use workshop database and load structure database from

```
postgres/postgres.sql
```

Create host file

```bash
mkdir secret
cd secret
touch db_configuration.js
```

Write host code on db_configuration.js

```js
module.exports = {
  user: 'yourusername',
  host: 'localhost',
  database: 'workshop',
  password: 'your password',
  host: 'postgress port'
}
```

### Running

After you finish installing step, you can run with 

```bash
cd postgres
npm start
```

### Code Style

There are 3 folders

```
router
controller
model
```

Using MVC (Model View Controller) concept to create API

```
router
```
router for addressing API

```
controller
```
controller for control data like error and result

```
model
```
model for query to database


Use arrow function and callback function for styling code, like this example

```js
const something = (parameter, callback) => {
  if (paramater) {
    callback(error, null)
  } else {
    callback(null, result.rows[0])
  }
}
```

## Built With

* [node.js](https://nodejs.org/en/) - The javascript runtime
* [Docker](https://www.docker.com/) - Postgres container
* [Kitematic](https://kitematic.com/) - Run containers using GUI


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
