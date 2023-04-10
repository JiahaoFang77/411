
# FUN UIUC CSGO: Project Report


## 1. Direction Change
We didn't change the general direction of our proposal. Our final app meets the summary below (copied from stage 1 proposal):

* A web app that enables UIUC CSGO fans to communicate with each other and find teammates with similar proficiency skills. It also removes obstacle when you are tired of your own skin and want to switch skins with trust of your classmates!

## 2. Achieving Usefulness
We only achieved part of the usefulness we supposed. 

We achieved the following points:
* We are pioneers in this area. There is no such a site focusing on college CSGO players before.
* We have developed a skin exchange service for students with limited financial circumstances. 

While failed to achieve:
* A forum for free communication and matching has been developed for the pain point of finding suitable teammates.

Due to the complexity of developing a real-time communication system and connecting our web app to CSGO servers is beyond our expectation.

## 3. Change on Schema or Source of Data
We changed our source of data after midterm demo to achieve the realness requirement of our application. We used real skin information from [buff.163.com](https://buff.163.com/) for our table "Skin" instead of automatically generated data.

## 4. Change to ER/UML diagram or Table Implemention
* We do changed our diagram when facing difficultied during development.
* We found that the Table Transaction in our original design will copy all the information needed from Own. 
* Secondly, from our front-end need, we always join Transaction, User, and Own when we need to fetch some data about Transaction. 
* Besides, we realized that a market is needed for our app for Users to see what skins can be borrowed, not just Transactions. 
* Surprisingly, we made our UML graph even simpler to solving this problem, we just attached relevant attributes to Own and all issues are set.
* Therefore, this is an absolutely suitable change for our app.

## 5. Removed Functionalities
* We removed comment function and the matching system. 
* The former one is actually useless for our app and there exists a lot of other platform providing this function. 
* The latter one is removed because the complexity of developing it is beyond our expectation.



## 6. Advanced Database Programs Complements Our Application
* We must update information about “Team” whenever a credit change happens on a User in the Team. 
* Also we must deal with the condition that a User joins or leaves the Team. 
* Therefore, we implemented the functions above using Stored Procedure + Trigger. 
* It is worth mentioning that our stored procedure provides two options, one for initialization, which updates Table “Teams” by brute force; and another for only updating Teams affected by the updated User, which provides a higher performance for our APP.

## 7. Each Member Describes One Technical Challenge
### Bolin Zhang bolinz3@illinois.edu
* You may find it difficult to test the whole app if both things from front-end to back-end are messed up. My suggestion is that you should make sure back-end functionalities works appropiately before testing front-end. It is quite simple to test only back-end using the app "Postman". 
### Shitian Yang sy39@illinois.edu
* Implementing a search list is difficult. We need to show every single item that matches the keyword on a list. My idea is to use Items.map() function, where Items is the list of items (an array of row data pack). Another reminder is that you can try to comment out componentDidMount() if nothing's showing up on the website.
### Jiahao Fang jiahaof3@illinois.edu
* When implementing Login system, you might be confused about how to record login information after logged in for every URL. For a simple app, using SessionStorage from react is a good idea. You may just fetch the corresponding SessionStorage at the start of your functions/components.
### Wenhan Jiang wenhanj3@illinois.edu
* At the start of the project, when inserting data into MySQL, you may get a lot of Errors about Foreign Key Constraint. You must insert data to the tables following your UML design, i.e. Insert those will be further relied on first.
* Passing parameters into the stored procedure will add flexibility of its function.


## 8. Other Things Changed
* We added an attribute "avg_Credit" to Teams to enable users to conveniently check whether a Team is relatively good.


## 9. Future Work
* For further improvement, we will add recommended system by adding usual playing time in the user attribute. User can add its usual playing time in its profile. Then system can find the similar players or teams and then recommend them to the user. Also, we can create a function to allow the user to add or delete many skins at the same time. Like creating checkboxes. 
* And we can create history function for users to find its previous skins, borrowers, lenders and so on. and we will add auto delete every 6 months to delete the users who have not credit and never sign in  in this 6 months. 
* Also, we will avoid multiple logins using the same account to avoid dirty read that affect the credit.
* If our market transactions become more frequent in the future, we will use MongoDB to rewrite transaction related functions, because MongoDB can receive any data faster than MySQL, and can receive more data than MySQL. Moreover, it reduces the load, simplifies the internal expansion of the project, and realizes high availability and rapid recovery of data, which is especially important for a market.  
* We can also use Neo4j, where we gonna add the function of following friends in our program as like ins and twitter, because the graph database is simpler and less redundancy occurs in the storage of social relations.

## 10. Division of Work
* Bolin Zhang -- Manager, responsible for project progress control, especially played an important role in front-End, back-End and app functional design.
* Shitian Yang –- Especially played an important role in front-end implemention, participated in back-end implemention.
* Jiahao Fang -- Especially played an important role in back-end implemention, participated in DB design and implemention.
* Wenhan Jiang -- Especially played an important role in developing stored procedures and triggers, participated in DB design and implemention.
* We distributed our work dynamically during the developing progress, helped with each other, and managed our teamwork extremely well.


## 11. Demo Video
https://www.youtube.com/watch?v=bNrSy8WZkgw



