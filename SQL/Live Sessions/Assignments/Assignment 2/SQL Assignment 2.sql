
-- SQL Assignment 2

-- Tasks Performed:


-- 1. Create a user-defined functions to stuff the Chicken into ‘Quick Bites’. Eg: ‘Quick Chicken Bites’.

CREATE FUNCTION dbo.ConvertToChickenBites(@RestaurantType NVARCHAR(255))
RETURNS NVARCHAR(255)
AS
BEGIN
    DECLARE @result NVARCHAR(255);

    -- Use the REPLACE function to replace 'Quick Bites' with 'Quick Chicken Bites'
    SET @result = REPLACE(@restaurantType, 'Quick Bites', 'Quick Chicken Bites');

    RETURN @result;
END;

UPDATE Jomato$
SET RestaurantType = dbo.ConvertToChickenBites(RestaurantType)
WHERE RestaurantType LIKE '%Quick Bites%';


-- 2. Use the function to display the restaurant name and cuisine type which has the maximum number of rating.

SELECT TOP 1
    RestaurantName,
    dbo.ConvertToChickenBites(CuisinesType) AS ConvertedCuisineType
FROM
    Jomato$
ORDER BY
    [Rating] DESC;

/* 3. Create a Rating Status column to display the rating as ‘Excellent’ if it has more the 4
start rating, ‘Good’ if it has above 3.5 and below 5 star rating, ‘Average’ if it is above 3
and below 3.5 and ‘Bad’ if it is below 3 star rating. */

ALTER TABLE Jomato$ ADD RatingStatus NVARCHAR(50);

UPDATE Jomato$
SET RatingStatus = 
    CASE
        WHEN Rating > 4 THEN 'Excellent'
        WHEN Rating > 3.5 AND Rating <= 4 THEN 'Good'
        WHEN Rating > 3 AND Rating <= 3.5 THEN 'Average'
        WHEN Rating <= 3 THEN 'Bad'
        ELSE NULL -- Handle any other cases if needed
    END;


/* 4. Find the Ceil, floor and absolute values of the rating column and display the current date
and separately display the year, month_name and day.  */

SELECT
    Rating,
    CEILING(Rating) AS CeilValue,
    FLOOR(Rating) AS FloorValue,
    ABS(Rating) AS AbsoluteValue
FROM
    Jomato$;


SELECT
    GETDATE() AS CurrentDate,
    YEAR(GETDATE()) AS CurrentYear,
    DATENAME(MONTH, GETDATE()) AS CurrentMonthName,
    DAY(GETDATE()) AS CurrentDay;

-- 5. Display the restaurant type and total average cost using rollup.

SELECT
    RestaurantType,
    AVG(AverageCost) AS TotalAverageCost
FROM
    Jomato$
GROUP BY
    ROLLUP (RestaurantType);