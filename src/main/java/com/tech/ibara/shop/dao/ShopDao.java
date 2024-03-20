package com.tech.ibara.shop.dao;

import java.util.ArrayList;

import com.tech.ibara.shop.dto.CategoryDto;
import com.tech.ibara.shop.dto.LevelCategoryDto;
import com.tech.ibara.shop.dto.ProductDto;

public interface ShopDao {

	public ArrayList<ProductDto> selectProductsByCategory(int category_id);
	public ArrayList<ProductDto> selectProductsByCategories(ArrayList<CategoryDto> categoryList);
	
	public ArrayList<CategoryDto> selectAllSubCategoriesById(int category_id);
	public ArrayList<CategoryDto> selectSubCategoriesById(int category_id);
	
	public CategoryDto selectCategoryById(int category_id);
	public CategoryDto selectUpCategoryById(int category_id);
	
	public ArrayList<String> selectAllCategories();
	
	public ArrayList<LevelCategoryDto> selectAllLevelCategories();
	
}
