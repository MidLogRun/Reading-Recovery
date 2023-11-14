CREATE TABLE user(
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(50) NOT NULL,
    email VARCHAR(50),
);

CREATE TABLE release(
    release_id INT PRIMARY KEY,
    title varchar(50),
    artist varchar(50),
    release_year INT,
    totalTracks INT,
    overallRating DECIMAL CHECK (overallRating >= 1 and overallRating <=5)
);

CREATE TABLE song(
    song_id INT PRIMARY KEY,
    songTitle VARCHAR(100),
    duration_minutes INT,
    duration_seconds INT
);

CREATE TABLE song_to_release(
    song_id INT,
    release_id INT
);

CREATE TABLE rateReview(
    review_id INT PRIMARY KEY,
    username_id INT,
    release_id INT,
    title VARCHAR(50),
    summary VARCHAR(300),
    rating INT NOT NULL CHECK (rating >= 1 and rating <= 5)
);

CREATE TABLE review_to_release(
    review_id INT,
    release_id INT
);

CREATE TABLE review_to_user(
    review_id INT,
    user_id INT,
    isReviewed BOOLEAN(0)
);