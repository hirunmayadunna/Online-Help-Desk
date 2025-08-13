# Online Help Desk System for University

An **Online Help Desk** for a university, designed to streamline campus services and support for students and staff. The application features a beautiful home page, as well as dedicated sections for About Us, Student Life, and Student Services.

A role-based university help desk application enables students to:
- Raise tickets for support
- Register for exams
- Book shuttle services

Staff members can:
- Manage support tickets
- Oversee scheduling
- Perform system administration
- secure login

## Tools & Technologies

- **Backend:** Java, JSP/Servlets, JDBC
- **Frontend:** HTML, Tailwind CSS, JavaScript
- **Database:** MySQL

## Features

- Beautiful landing/home page for first impressions
- About Us section introducing the university and the help desk system
- Student Life page highlighting campus activities and resources
- Student Services section for quick access to campus support
- Role-based access for students and staff
- Ticketing system for student support
- Exam registration functionality
- Shuttle service booking for students
- Secure login
- Admin and staff dashboards for management

## Installation & Setup

1. **Clone the Repository**
   ```sh
   git clone https://github.com/RickyJasonVanderheyden/Online-Help-Desk.git
   ```

2. **Import to Eclipse**
   - Open Eclipse IDE
   - Go to `File` > `Import...` > `Existing Projects into Workspace`
   - Select the cloned folder

3. **Configure Database**
   - Create a MySQL database
   - Update database connection details (username, password, DB name) in the project’s configuration files (typically in a `.properties` or Java source file)

4. **Run on Apache Tomcat**
   - Ensure Apache Tomcat is installed and configured in Eclipse
   - Right-click the project > `Run As` > `Run on Server`
   - Access the application in your web browser at `http://localhost:8080/Online-Help-Desk` (URL may vary based on your Tomcat setup)

## Contribution

Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.



---
*For questions or support, open an issue in this repository.*
