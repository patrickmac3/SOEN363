"""
Patrick MacEachen - 40209790
Soen363 - Assignnment 2

Required installs:
    pip install requests
    python -m pip install my-sql-connector-python
    from imdb import IMDb


"""


import sql_functions
from sql_functions import db, cursor
import mysql.connector
import imdb
from imdb_list import imdb_list
import re
import requests
"""
Retrieving the needed information about each movie listed in imdb_list and inserting data into database
"""
try:
    ia = imdb.IMDb()

    for movie_id in imdb_list:
        movie = ia.get_movie(movie_id[2:])
        ia.update(movie)
        """
        Movie information needed
        - imdb_id 
        - title 
        - description
        - rating
        - release_year
        - runtime
        - AKAs
        - number_of_reviews 
        """
        imdb_id = movie.getID()
        title = movie.get('title', 'N/A')
        description = movie.get('plot', 'N/A')[0]
        aggregate_rating = movie.get('rating', 'N/A')
        rating_count = movie.get('votes', 'N/A')
        release_year = movie.get('year', 'N/A')
        runtime = movie.get('runtimes', ['N/A'])[0]
        # akas = movie.get('akas', ['N/A'])[0].encode('utf-8', errors='ignore').decode('utf-8', 'ignore')
        akas = movie.get('akas', ['N/A'])[0]
        try:
            akas = akas.encode('utf-8', errors='ignore').decode('utf-8')
        except UnicodeEncodeError:
            akas = 'N/A'
        print(f"imdb id: {imdb_id}")
        print(f"title : {title}")
        print(f"description: {description}")
        print(f"rating: {aggregate_rating}")
        print(f"review count: {rating_count}")
        print(f"runtime: {runtime}")
        print(f"AKAs: {akas}")
        print(f"release year: {release_year}")
        sql_functions.insertMovie(imdb_id, title, description, aggregate_rating, release_year, runtime, akas, rating_count)
        """
        Actor information needed
        - imdb_id 
        - name 
        - character
        """
        cast = movie.get('cast', [])[:3]
        for actor in cast:
            if actor.get('name') is None: continue
            print(f"imdb id: {actor.getID()} - name: {actor.get('name')} - role: {actor.currentRole}")
            sql_functions.insertActor(actor.getID(), actor.get('name'), imdb_id, str(actor.currentRole))
        """
        Director information needed
        - imdb_id 
        - name 
        """
        directors = movie.get('director', [])[:3]
        for director in directors:
            if director.get('name') is None: continue
            print(f"imdb id: {director.getID()} - name: {director.get('name')}")
            sql_functions.insertDirector(director.getID(), director.get('name'), imdb_id)
        """
        Creator information needed
        - imdb_id 
        - name 
        """
        creators = movie.get('writer', [])[:3]
        for creator in creators:
            if creator.get('name') is None: continue
            print(f"imdb id: {creator.getID()} - name: {creator.get('name')}")
            sql_functions.insertCreator(creator.getID(), imdb_id, creator.get('name'))
        """
        Country information needed
        - country name
        - country code 
        """
        countries = movie.get('countries', ['N/A'])
        country_codes = movie.get('country codes', ['N/A'])
        country_code = dict(zip(countries, country_codes))
        for country in country_code:
            print(f"{country} - {country_code[country]} ")
            sql_functions.insertCountry(country, country_code[country], imdb_id)
        """
        Genre information needed
        - genre
        """
        genres = movie.get('genres', ['N/A'])
        for genre in genres: 
            print(f"{genre}")
            sql_functions.insertGenre(genre, imdb_id)
        """
        TODO: Keyword information needed
        - keyword
        """
        response = requests.get(f'http://search.imdbot.workers.dev/?tt={movie_id}')
        if response.status_code == 200: 
            data = response.json()
            keywords = data['short']['keywords'].split(',')
            # keywords = movie.get('keywords', ['N/A'])
            for keyword in keywords: 
                print(f"{keyword}")
                sql_functions.insertKeyword(keyword, imdb_id)
        """
        content rating information needed
        - content rating
        """
        content_rating = 'N/A'
        # content_rating = [re.search(r':([A-Za-z0-9\+\-]+)', rating).group(1) for rating in movie.get('certificates', ['N/A']) if 'Canada' and 'Quebec' in rating ][0]
        for rating in movie.get('certificates', ['N/A']):
            if 'Canada' in rating:
                if 'Quebec' in rating:
                    content_rating = re.search(r':([A-Za-z0-9\+\-]+)', rating).group(1)
                    break
                elif content_rating == 'N/A':
                    content_rating = re.search(r':([A-Za-z0-9\+\-]+)', rating).group(1)
        print(f"content rating: {content_rating}")
        sql_functions.insertContentRating(str(content_rating), imdb_id)
        """
        language information needed
        - language 
        """
        languages = movie.get('languages', ['N/A'])
        for x in languages: 
            print(x)
            sql_functions.insertLanguage(x, imdb_id)
        print('============================================')
except Exception as e:
    print(f"Error: {e}")
finally:
    if db.is_connected():
        cursor.close()
        db.close()
        print("Database connection closed.")
