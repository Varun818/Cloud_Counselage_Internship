# Cloud_Counselage_Internship
<h2> About the project : College Search Application</h2>

<h3>Overview:</h3>

<p>In this world with huge chunks of data there is no simplified application for searching college and gaining simplified information for college students or users and it has become a problem. </p>

<h3>Objective:</h3>

<p>The project aims to provide a simplified college search application where users can search different colleges of their choice and obtain information about that college.</p>

<h3>Key Features:</h3>

<p><h3> College Database:</h3> Access a vast database of colleges and universities, including detailed information on College name, address, contact information, and more.<br>
    <h3>Search and Filter:</h3> Utilize our robust search functionality to filter colleges by location, name, and other relevant criteria.<br>
    <h3>College Details Page:</h3> Detailed page for each college, including:<br>
    - College Name<br>
    - College Address<br>
    - Contact Information<br>
    - Courses Offered<br>
    - Duration<br> </p>
<h3>To run the code:</h3>
<p>1. Put HTML files in template folder<br>
   2.Put css files and image in static folder<br>
   3.Import the mysql dump <br>
    4.Steps For importing mysql <br>
    <pre>
        <code class="language-SQL">
      CREATE DATABASE new_database_name;
        </code>
      </pre>
      <pre>
          <code class="language-SQL">
      mysql -u [your username] -p [new_database_name] < [dump_file.sql]
      </code>
      </pre>
      Then change db config in flask app like username , password and your database name to your username , password and newly created databse name.<br>
     After importing database ,save the database in the same folder along with static and template folder.<br>
   5.Open folder in VS code or any editor<br>
   6.Run the app.py and click on the localhost link generated.<br></p>
