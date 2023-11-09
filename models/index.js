const { Sequelize,DataTypes } = require('sequelize');
const sequelize = new Sequelize('divine', 'root', 'divine', {
    host: 'localhost',
    logging:false,
    dialect: 'mysql',
    // operatorsAliases: false,
  
  });
  sequelize.authenticate()
  .then(() => {
    console.log('Connection has been established successfully.');
  })
  .catch((error) => {
    console.error('Unable to connect to the database:', error);
  });

  const db = {}
  db.Sequelize=Sequelize
  db.sequelize = sequelize

  db.userModels = require('./userModels')(sequelize,DataTypes)
  db.category = require('./category')(sequelize,DataTypes)
  db.banner = require('./banner')(sequelize,DataTypes)
  db.product = require('./product')(sequelize,DataTypes)
  db.userAddress = require('./userAddress.')(sequelize,DataTypes)
  db.userCart = require('./userCart')(sequelize,DataTypes)
  db.preistModel = require('./preistModel')(sequelize,DataTypes)




  db.category.hasMany( db.product,{foreignKey:'category_id'})
  db.product.belongsTo(db.category,{ foreignKey: 'category_id' })

  
  db.userModels.hasMany( db.userAddress,{foreignKey:'user_id'})
  db.userAddress.belongsTo(db.userModels,{ foreignKey: 'user_id' })

  db.userModels.hasMany( db.userCart,{foreignKey:'user_id'})
  db.userCart.belongsTo(db.userModels,{ foreignKey: 'user_id' })


  db.product.hasMany( db.userCart,{foreignKey:'product_id'})
  db.userCart.belongsTo(db.product,{ foreignKey: 'product_id' })

  db.userModels.hasMany( db.preistModel,{foreignKey:'user_id'})
  db.preistModel.belongsTo(db.userModels,{ foreignKey: 'user_id' })



  sequelize.sync({force:false})

  module.exports = db
