import 'package:flutter_news_app/models/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> category = <CategoryModel>[];
  CategoryModel categoryModel = CategoryModel();

  //1
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Business";
  categoryModel.imageUrl =
  "https://images.unsplash.com/photo-1600880292203-757bb62b4baf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80";
  category.add(categoryModel);

  //2
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Entertainment";
  categoryModel.imageUrl =
  "https://media.istockphoto.com/id/1342231672/photo/asian-woman-and-cute-dog-having-fun-together-at-home.jpg?s=1024x1024&w=is&k=20&c=8hSltwipWfzDJOaCOJqqGCJuQa9m-kH8k783KoE50JI=";
  category.add(categoryModel);

  //3
  categoryModel = CategoryModel();
  categoryModel.categoryName = "General";
  categoryModel.imageUrl =
  "https://media.istockphoto.com/id/1413837487/photo/construction-company-concept-construction-business-layout-of-the-house-helmet-roulette-lies.jpg?s=1024x1024&w=is&k=20&c=sawUeCWiID6cR0ikbvyxxAp63QIDmiHL54qdcYeC3Mc=";
  category.add(categoryModel);

  //4
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Health";
  categoryModel.imageUrl =
  "https://images.unsplash.com/photo-1506126613408-eca07ce68773?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=499&q=80";
  category.add(categoryModel);

  //5
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Science";
  categoryModel.imageUrl =
  "https://images.unsplash.com/photo-1614935151651-0bea6508db6b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=925&q=80";
  category.add(categoryModel);

  //5
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Sports";
  categoryModel.imageUrl =
  "https://media.istockphoto.com/id/1360033206/photo/members-of-female-kids-soccer-and-football-team-training-and-dribbling-to-improve-their-skills.jpg?s=1024x1024&w=is&k=20&c=Wu-MtNeW84NTLaB7p72tIEKVPD8BEL_5bVohwDSbRBY=";
  category.add(categoryModel);

  //5
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Technology";
  categoryModel.imageUrl =
  "https://images.unsplash.com/photo-1581091226825-a6a2a5aee158?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80";
  category.add(categoryModel);

  return category;
}



