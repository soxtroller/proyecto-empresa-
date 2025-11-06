import db from "../config/db.js";

export const getCategories = (req, res) => {
  db.query("SELECT * FROM categories", (err, results) => {
    if (err) return res.status(500).json({ error: err });
    res.json(results);
  });
};

export const getCategoryById = (req, res) => {
  const { id } = req.params;
  db.query("SELECT * FROM categories WHERE id = ?", [id], (err, results) => {
    if (err) return res.status(500).json({ error: err });
    res.json(results[0]);
  });
};

export const createCategory = (req, res) => {
  const { name } = req.body;
  db.query("INSERT INTO categories (name) VALUES (?)", [name], (err, result) => {
    if (err) return res.status(500).json({ error: err });
    res.json({ id: result.insertId, name });
  });
};

export const updateCategory = (req, res) => {
  const { id } = req.params;
  const { name } = req.body;
  db.query("UPDATE categories SET name = ? WHERE id = ?", [name, id], (err) => {
    if (err) return res.status(500).json({ error: err });
    res.json({ message: "Categoría actualizada correctamente" });
  });
};

export const deleteCategory = (req, res) => {
  const { id } = req.params;
  db.query("DELETE FROM categories WHERE id = ?", [id], (err) => {
    if (err) return res.status(500).json({ error: err });
    res.json({ message: "Categoría eliminada correctamente" });
  });
};
