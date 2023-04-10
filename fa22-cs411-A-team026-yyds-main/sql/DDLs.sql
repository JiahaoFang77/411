USE csgo;
CREATE TABLE `User` (
    UserId INT NOT NULL ,
    Sex VARCHAR(10),
    `Name` VARCHAR(30), 
    Contact VARCHAR(30), 
    StudyField VARCHAR(10), 
    Credit INT,
    PRIMARY KEY (UserId)
);
CREATE TABLE `Language`(
	LanguageId INT NOT NULL,
    `Name` VARCHAR(30),
    PRIMARY KEY (LanguageId)
);
CREATE TABLE Speak(
	UserId INT NOT NULL,
    LanguageId INT,
    PRIMARY KEY (UserId),
    FOREIGN KEY (UserId) REFERENCES `User`(UserId),
    FOREIGN KEY (LanguageId) REFERENCES `Language`(LanguageId)
);


CREATE TABLE Login(
	Email VARCHAR(30) NOT NULL, 
	`Password` VARCHAR(30), 
    UserId INT,
    PRIMARY KEY (Email),
    FOREIGN KEY (UserId) REFERENCES `User`(UserId)
);
CREATE TABLE `Use`(
	UserId INT NOT NULL,
	Email VARCHAR(30), 
    PRIMARY KEY (UserId),
    FOREIGN KEY (UserId) REFERENCES `User`(UserId),
    FOREIGN KEY (Email) REFERENCES Login(Email)
);


CREATE TABLE Teams(
	TeamId INT NOT NULL, 
	FoundTime Date, 
    FounderId INT, 
    NumMenber INT, 
    `LanguageId` INT, 
    Lowest_Rank INT, 
    Highest_Rank INT,
    PRIMARY KEY (TeamId),
    FOREIGN KEY (FounderId) REFERENCES `User`(UserId),
    FOREIGN KEY (`LanguageId`) REFERENCES `Language`(LanguageId)
);
CREATE TABLE Belong(
	UserId INT NOT NULL,
    TeamId INT NOT NULL,
    PRIMARY KEY (UserId,TeamId),
    FOREIGN KEY (UserId) REFERENCES `User`(UserId),
    FOREIGN KEY (TeamId) REFERENCES `Teams`(TeamId)
);

CREATE TABLE Skin(
	SkinId INT NOT NULL, 
    WeaponType VARCHAR(30), 
    MarketPrice Decimal, 
    Credit_Suggest INT, 
    SkinName VARCHAR(30),
    PRIMARY KEY(SkinId)
);
CREATE TABLE Own(
	UserId INT, 
    SkinId INT,
    PRIMARY KEY(UserId,SkinId),
    FOREIGN KEY (UserId) REFERENCES `User`(UserId),
    FOREIGN KEY (SkinId) REFERENCES Skin(SkinId)
);


CREATE TABLE `Transaction`(
	Lender INT NOT NULL, 
    Borrower INT NOT NULL,
    SkinId INT,
    StartTime Date, 
    EndTime Date, 
    CreditPledged INT,
    PRIMARY KEY (Lender, Borrower),
    FOREIGN KEY (Lender) REFERENCES `User`(UserId),
    FOREIGN KEY (Borrower) REFERENCES `User`(UserId),
    FOREIGN KEY (SkinId) REFERENCES Skin(SkinId)
);
CREATE TABLE `Comment`(
	`From` INT, 
	`To` INT, 
	CommentDate Date, 
    Content VARCHAR(100), 
    Rating INT,
	FOREIGN KEY (`From`) REFERENCES `User`(UserId),
    FOREIGN KEY (`To`) REFERENCES `User`(UserId)
);

  
    
    
    
    
    
    
    
    
    
    
    
    
    