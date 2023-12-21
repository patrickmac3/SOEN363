"""
Various functions for inserting data into various tables of mysql database
"""
import mysql.connector

try:
    db = mysql.connector.connect(
        host='localhost',
        user='root',
        password='root',
        database='movies'
    )
except mysql.connector.Error as err:
    print(f"An error occurred: {err}")

print('Connected to db')
cursor = db.cursor()

def insertMovie(imdb_id, title, description, rating, release_year, runtime, AKAs, number_of_reviews):
    sql =   """
            INSERT IGNORE INTO Movie (imdb_id, title, description, rating, release_year, runtime, AKAs, number_of_reviews)
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
            """
    values = (imdb_id, title, description, rating, release_year, runtime, AKAs, number_of_reviews)
    cursor.execute(sql, values)
    db.commit()
    return cursor.lastrowid

def insertPerson(imdb_id, name):
    sql =   """
            INSERT IGNORE INTO Person (imdb_id, name)
            VALUES (%s, %s)
            """
    values = (imdb_id, name)
    cursor.execute(sql, values)
    db.commit()
    return cursor.lastrowid

def insertActsIn(actor_imdb_id, movie_imdb_id, character):
    sql =   """
            INSERT IGNORE INTO Acts_in (actor_id, movie_id, persona)
            VALUES (%s, %s, %s)
            """
    values = (actor_imdb_id, movie_imdb_id, character)
    cursor.execute(sql, values)
    db.commit()
    return cursor.lastrowid

def insertActor(actor_imdb_id, name, movie_imdb_id, character):
    id = insertPerson(actor_imdb_id, name)
    sql =   """
            INSERT IGNORE INTO Actor (id, imdb_id)
            VALUES (%s, %s)
            """
    values = (id, actor_imdb_id)
    cursor.execute(sql, values)
    db.commit()
    actor_id = cursor.lastrowid
    insertActsIn(actor_imdb_id, movie_imdb_id, character)
    return actor_id

def insertDirected(director_imdb_id, movie_imdb_id):
    sql =   """
            INSERT IGNORE INTO Directed (director_id , movie_id)
            VALUES (%s, %s)
            """
    values = (director_imdb_id, movie_imdb_id)
    cursor.execute(sql, values)
    db.commit()
    return cursor.lastrowid

def insertDirector(director_imdb_id, name, movie_imdb_id):
    id = insertPerson(director_imdb_id, name)
    sql =   """
            INSERT IGNORE INTO Director (id, imdb_id)
            VALUES (%s, %s)
            """
    values = (id, director_imdb_id)
    cursor.execute(sql, values)
    db.commit()
    director_id = cursor.lastrowid
    insertDirected(director_imdb_id, movie_imdb_id)
    return director_id

def insertCreated(creator_imdb_id, movie_imdb_id):
    sql = """
          INSERT IGNORE INTO Created (creator_id, movie_id)
          VALUES (%s, %s)
          """
    values = (creator_imdb_id, movie_imdb_id)
    cursor.execute(sql, values)
    return cursor.lastrowid

def insertCreator(creator_imdb_id, movie_imdb_id, name):
    id = insertPerson(creator_imdb_id, name)
    sql="""
        INSERT IGNORE INTO Creator (id, imdb_id)
        VALUES (%s, %s)
        """
    values = (id, creator_imdb_id)
    cursor.execute(sql, values)
    db.commit()
    creator_id = cursor.lastrowid
    insertCreated(creator_imdb_id, movie_imdb_id)
    return creator_id

def insertCountry(country, country_code, movie_imdb_id):
    sql = """
          INSERT IGNORE INTO Country (country, country_code)
          VALUES (%s, %s)
          """
    values = (country, country_code)
    cursor.execute(sql, values)
    db.commit()
    country_id = cursor.lastrowid
    insertMovieCountry(country, movie_imdb_id)
    return country_id

def insertMovieCountry(country, movie_imdb_id):
    sql = """
          INSERT IGNORE INTO MovieCountry (country, movie_id)
          VALUES (%s, %s)
          """
    values = (country, movie_imdb_id)
    cursor.execute(sql, values)
    db.commit()
    return cursor.lastrowid

def insertGenre(genre, movie_imdb_id):
    sql = """
          INSERT IGNORE INTO Genre (genre)
          VALUES (%s)
          """
    values = (genre, )
    cursor.execute(sql, values)
    db.commit()
    genre_id = cursor.lastrowid
    insertMovieGenre(genre_id, movie_imdb_id)
    return genre_id

def insertMovieGenre(genre_id, movie_imdb_id):
    sql = """
          INSERT IGNORE INTO MovieGenre (genre_id, movie_id)
          VALUES (%s, %s)
          """
    values = (genre_id, movie_imdb_id)
    cursor.execute(sql, values)
    db.commit()
    return cursor.lastrowid

def insertKeyword(keyword, movie_imdb_id):
    sql = """
          INSERT IGNORE INTO Keyword (keyword)
          VALUES (%s)
          """
    values = (keyword, )
    cursor.execute(sql, values)
    db.commit()
    id = cursor.lastrowid
    insertMovieKeyword(id, movie_imdb_id)
    return id

def insertMovieKeyword(keyword_id, movie_imdb_id):
    sql = """
          INSERT IGNORE INTO MovieKeyword (keyword_id, movie_id)
          VALUES (%s, %s)
          """
    values = (keyword_id, movie_imdb_id)
    cursor.execute(sql, values)
    db.commit()
    return cursor.lastrowid

def insertContentRating(content_rating, movie_imdb_id):
    sql = """
          INSERT IGNORE INTO ContentRating (contentRating, movie_id)
          VALUES (%s, %s)
          """
    values = (content_rating, movie_imdb_id)
    cursor.execute(sql, values)
    db.commit()
    return cursor.lastrowid

def insertLanguage(language, movie_imdb_id):
    sql = """
          INSERT IGNORE INTO Lan (lan)
          VALUES (%s)
          """
    values = (language, )
    cursor.execute(sql, values)
    db.commit()
    id = cursor.lastrowid
    insertMovieLanguage(language, movie_imdb_id)
    return id

def insertMovieLanguage(language, movie_imdb_id):
    sql = """
          INSERT IGNORE INTO MovieLan (lan, movie_id)
          VALUES (%s, %s)
          """
    values = (language, movie_imdb_id)
    cursor.execute(sql, values)
    db.commit()
    return cursor.lastrowid


