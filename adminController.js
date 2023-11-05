var db = require('../models/index')
var categoryTable = db.category
var banners = db.banner
var product = db.product



const addCategory = async (req, res) => {
    try {
      const category = req.body.category_name;
  
      if (!category) {
        return res.status(400).json({ error: 'Please provide category name.' });
      }
  
      // Create a new category in the database
      const newCategory = await categoryTable.create({ category_name: category });
  
      // Send success response
      res.status(201).json({ message: 'Category added successfully.', data: newCategory });
    } catch (error) {
      console.error('Error adding category:', error);
      res.status(500).json({ message: 'Error adding category.' });
    }
  };
  const getAllCategories = async (req, res) => {
    try {
      const categories = await categoryTable.findAll();
      res.status(200).json({ message: 'Categories retrieved successfully.', data: categories });
    } catch (error) {
      console.error('Error getting categories:', error);
      res.status(500).json({ message: 'Error getting categories.' });
    }
  };
  const getCategoryById = async (req, res) => {
    const categoryId = req.params.id;
  
    try {
      const category = await categoryTable.findByPk(categoryId);
      if (!category) {
        return res.status(404).json({ message: 'Category not found.' });
      }
  
      res.status(200).json({ message: 'Category retrieved successfully.', data: category });
    } catch (error) {
      console.error('Error getting category by ID:', error);
      res.status(500).json({ message: 'Error getting category.' });
    }
  };

  const updateCategory = async (req, res) => {
    const categoryId = req.params.id;
    const updatedCategoryName = req.body.category_name;
  
    try {
      const category = await categoryTable.findByPk(categoryId);
      if (!category) {
        return res.status(404).json({ message: 'Category not found.' });
      }
  
      category.category_name = updatedCategoryName;
      await category.save();
  
      res.status(200).json({ message: 'Category updated successfully.', data: category });
    } catch (error) {
      console.error('Error updating category:', error);
      res.status(500).json({ message: 'Error updating category.' });
    }
  };
  

  const deleteCategory = async (req, res) => {
    const categoryId = req.params.id;
  
    try {
      const category = await categoryTable.findByPk(categoryId);
      if (!category) {
        return res.status(404).json({ message: 'Category not found.' });
      }
  
      await category.destroy();
      res.status(200).json({ message: 'Category deleted successfully.' });
    } catch (error) {
      console.error('Error deleting category:', error);
      res.status(500).json({ message: 'Error deleting category.' });
    }
  };
  
  const addBanner = async (req, res) => {
    try {
      const { image1, image2, image3 } = req.files;
  
      // Create a new banner entry in the database
      const newBanner = await db.banner.create({
        image1: image1 ? image1[0].filename : null,
        image2: image2 ? image2[0].filename : null,
        image3: image3 ? image3[0].filename : null,
        banner_id:1
      });
      await newBanner.save();
  
  
      res.status(201).json({ message: 'Banner added successfully.', data: newBanner });
    } catch (error) {
      console.error('Error adding banner:', error);
      res.status(500).json({ message: 'Error adding banner.' });
    }
  };
  
  const updateBanner = async (req, res) => {
    try {
      const { image1, image2, image3 } = req.files;
  
      // Find the last existing banner with banner_id = 1
      const lastBanner = await db.banner.findOne({
        where: { banner_id: 1 },
        order: [['createdAt', 'DESC']], // Get the last entry based on creation date
      });
  
      if (!lastBanner) {
        return res.status(404).json({ message: 'No banner found for the specified banner_id.' });
      }
  
      // Update the images for the last banner
      lastBanner.image1 = image1 ? image1[0].filename : lastBanner.image1;
      lastBanner.image2 = image2 ? image2[0].filename : lastBanner.image2;
      lastBanner.image3 = image3 ? image3[0].filename : lastBanner.image3;
  
      // Save the changes to the database
      await lastBanner.save();
  
      res.status(200).json({ message: 'Banner updated successfully.', data: lastBanner });
    } catch (error) {
      console.error('Error updating banner:', error);
      res.status(500).json({ message: 'Error updating banner.' });
    }
  };
  
  const getBanner = async (req, res) => {
    try {
      const getBanner = await db.banner.findOne({
        where: { banner_id: 1 },
        order: [['createdAt', 'DESC']]
        
      });
  
      if (!getBanner) {
        return res.status(404).json({ message: 'Active announcement form not found.' });
      }
  
      res.status(200).json({ data: getBanner });
    } catch (error) {
      console.error('Error fetching getBanner form:', error);
      res.status(500).json({ message: 'Error fetching getBanner form.' });
    }
  };


  const addProduct = async (req, res) => {
    try {
      let category_id = req.params.id;
  
      const { name, courseBook, rs, instock } = req.body;
      // let image = req.file.filename;
      let image = null;

      // Handle file upload using Multer if a file is included in the request
      if (req.file) {
        image = req.file.filename;
      }
  
      // Validate required fields
      if (!name || !rs || !instock) {
        return res.status(400).json({ message: 'Name, Rs, and Instock are required fields.' });
      }
  
      // Validate categoryId
      const category = await categoryTable.findByPk(category_id);
      if (!category) {
        return res.status(400).json({ message: 'Invalid categoryId. Category not found.' });
      }
  
      // Create the new product
      const newProduct = await product.create({
        name: name,
        courseBook: courseBook,
        category_id: category_id,
        rs: rs,
        instock: instock,
        image: image,
      });
  
      // Send success response
      return res.status(201).json({ message: 'Product created successfully.', data: newProduct });
    } catch (error) {
      // Handle specific Sequelize validation errors
      if (error.name === 'SequelizeValidationError') {
        const errors = error.errors.map(err => err.message);
        return res.status(400).json({ message: 'Validation error.', errors: errors });
      }
  
      // Handle other errors
      console.error('Error creating product:', error);
      return res.status(500).json({ message: 'Error creating product.', error: error.message });
    }
  };
  
  
  const getProductbyID = async (req, res) => {
    const productId = req.params.id;
    try {
      const Product = await product.findByPk(productId);
      if (!Product) {
        return res.status(404).json({ message: 'Product not found.' });
      }
      return res.status(200).json({ data: Product });
    } catch (error) {
      console.error('Error retrieving product by ID:', error);
      return res.status(500).json({ message: 'Error retrieving product by ID.', error: error.message });
    }
  };

  const getProductbyCategoryID = async (req, res) => {
    const categoryId = req.params.category_id;
    try {
      // Validate categoryId
      const category = await categoryTable.findByPk(categoryId);
      if (!category) {
        return res.status(400).json({ message: 'Invalid categoryId. Category not found.' });
      }
  
      // Retrieve products by category_id
      const products = await product.findAll({
        where: {
          category_id: categoryId,
        },
      });
  
      return res.status(200).json({ data: products });
    } catch (error) {
      console.error('Error retrieving products by category ID:', error);
      return res.status(500).json({ message: 'Error retrieving products by category ID.', error: error.message });
    }
  };
  
  const updateProduct = async (req, res) => {
    const productId = req.params.id;
    const { name, courseBook, categoryId, rs, instock, image } = req.body;
    try {
      const products = await product.findByPk(productId);
      if (!products) {
        return res.status(404).json({ message: 'Product not found.' });
      }
  
      // Validate categoryId
    //   const category = await categoryTable.findByPk(categoryId);
    //   if (!category) {
    //     return res.status(400).json({ message: 'Invalid categoryId. Category not found.' });
    //   }
  
      // Update product attributes
      product.name = name;
      product.courseBook = courseBook;
      product.category_id = categoryId;
      product.rs = rs;
      product.instock = instock;
      product.image = image;
  
      // Save updated product
      await products.save();
  
      return res.status(200).json({ message: 'Product updated successfully.', data: product });
    } catch (error) {
      console.error('Error updating product:', error);
      return res.status(500).json({ message: 'Error updating product.', error: error.message });
    }
  };
  
    const deleteProduct = async (req, res) => {
    const productId = req.params.id;
    try {
      const products = await product.findByPk(productId);
      if (!products) {
        return res.status(404).json({ message: 'Product not found.' });
      }
  
      // Delete the product
      await products.destroy();
  
      return res.status(200).json({ message: 'Product deleted successfully.' });
    } catch (error) {
      console.error('Error deleting product:', error);
      return res.status(500).json({ message: 'Error deleting product.', error: error.message });
    }
  };
  
  

  module.exports = {addCategory,getAllCategories,getCategoryById,getAllCategories,updateCategory,deleteCategory,addBanner,updateBanner,getBanner,
    addProduct,getProductbyID,getProductbyCategoryID,updateProduct,deleteProduct}