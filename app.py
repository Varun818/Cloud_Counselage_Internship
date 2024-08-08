from flask import Flask, request, render_template
import mysql.connector
from mysql.connector import Error

app = Flask(__name__)

# Database configuration
DB_CONFIG = {
    'host': 'localhost',
    'user': 'root',
    'password': 'root@123#$888A',
    'database': 'internship'
}

# Function to get database connection
def get_db_connection():
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        return conn
    except Error as e:
        print(f"Error connecting to the database: {e}")
        return None

# Function to execute SQL query
def execute_query(conn, sql_query, params=None):
    try:
        cur = conn.cursor(dictionary=True)
        cur.execute(sql_query, params)
        return cur.fetchall()
    except mysql.connector.Error as e:
        print(f"Database error: {e}")
        return None
    finally:
        cur.close()

# Function to search colleges
def search_colleges(query, exact_match):
    conn = get_db_connection()
    if conn is None:
        return None
    try:
        if exact_match:
            sql_query = '''
                SELECT c.CollegeName, c.CollegeAddress, c.CollegePhoneNumber, cs.CourseName, cs.CourseDuration
                FROM colleges c
                LEFT JOIN collegecourses cc ON c.CollegeID = cc.CollegeID
                LEFT JOIN courses cs ON cc.CourseID = cs.CourseID
                WHERE c.CollegeName = %s
            '''
            params = (query,)
        else:
            sql_query = '''
                SELECT c.CollegeName, c.CollegeAddress, c.CollegePhoneNumber, cs.CourseName, cs.CourseDuration
                FROM colleges c
                LEFT JOIN collegecourses cc ON c.CollegeID = cc.CollegeID
                LEFT JOIN courses cs ON cc.CourseID = cs.CourseID
                WHERE c.CollegeName LIKE %s
            '''
            params = (query + '%',)
        results = execute_query(conn, sql_query, params)
        return results
    finally:
        conn.close()

# Route for search page
@app.route('/')
def index():
    return render_template('search.html')

# Route for search results
@app.route('/search')
def search():
    query = request.args.get('query', '').strip()
    exact_match = request.args.get('exact_match', False) == 'True'
    if not query:
        return render_template('results.html', results=[], message="No search query provided.")
    results = search_colleges(query, exact_match)
    if results is None:
        return "Error connecting to the database."
    if not results:
        return render_template('results.html', results=[], message="No results found.")
    return render_template('results.html', results=results, message="Results found.")

if __name__ == '__main__':
    app.run(debug=True)