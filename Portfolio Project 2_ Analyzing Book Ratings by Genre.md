**Goodreads Book Ratings and Genre Analysis**

**Project Overview:**  
This project analyzes Goodreads data to explore the relationship between how user ratings vary across different book genres. I used SQL in BigQuery to analyze my data. I cleaned and structured multiple datasets to identify highly-rated and widely read books, as well as rating trends across genres. The goal of this project is to demonstrate practical SQL skills such as data cleaning, joins, aggregations, and analytical reasoning using a real-world dataset.

**Research Question**  
How does the average rating of books vary by genre? 

**Data Description**  
This dataset is from Kaggle \- Goodbooks \- 10k  
[https://www.kaggle.com/datasets/zygmunt/goodbooks-10k](https://www.kaggle.com/datasets/zygmunt/goodbooks-10k)  
This dataset contains Goodreads style book metadata, user ratings, and user-generated tags.  
Key Tables Used: 

* **books.csv:** book metadata (authors, ratings, title)  
* **ratings.csv:** individual user ratings  
* **tags.csv:** Tag ID to tag name \- tag id \= genre  
* **book\_tags.csv:** relationship between books and tags.


**Data Cleaning/Prep**  
To ensure that the data was clean and ready for analysis I created clean SQL tables views instead of modifying the raw tables directly. The steps I took were:

* Creating clean views for each table (books\_clean, ratings\_clean, tags\_clean, book\_tags\_clean)  
* Standardizing text fields by using TRIM() and LOWER()  
* Handling data type inconsistencies by utilizing SAFE\_CAST  
* Filtering out NULL records  
* Creating a derived book\_genres\_clean view to isolate true genre tags from non-genre tags such as: “owned”, “to-read”, etc.

**Analysis and SQL Insights**

1. **Highly Rated and Popular Books:**

To ensure that I was only looking at books that were both well-rated and highly read, I analyzed user ratings while applying a minimum threshold of 500 ratings to avoid a small-sample bias ((I didn’t want a book that had 5 stars but only 3 reviews). This approach highlights books that maintain a strong average rating while also demonstrating significant reader engagement.   
Skills demonstrated: 

* JOINS  
* Aggregations  
* HAVING   
* Business logic to reduce bias  
2. **Average Rating by Genre**

Using cleaned and filtered data genre tags derived from Goodreads user data, I analyze the average book ratings across seven major genres. Only genres with at least 100 distinct books were included to ensure meaningful comparisons.  
Here are the results:

Fantasy books achieved the highest average rating of the genres, followed closely by classics and non-fiction. While fiction accounted for the largest number of books overall, it did not have the highest average rating, suggesting that genre popularity does not always correspond to higher reader ratings.  
Skills Demonstrated:

* Multiple table  JOINS  
* Category normalization  
* Group level-aggregation  
* Analytical interpretation of results 

**Key Insights**

* Genres with higher niche audiences such as fantasy and classics tend to achieve higher ratings.  
* Highly rated books are not always the most popular, so it is important to also filter for engagement. 


  
**Tools**

* SQL: BigQuery  
* Google BigQuery Console  
* Kaggle Datasets  
* GitHub

**Repository**

**About Me**  
	**I am an aspiring data analyst with a background in education and a strong interest in using data to uncover meaningful patterns.** 

