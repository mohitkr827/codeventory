# Code Snippet Manager
A simple command-line Ruby application to store, manage, and search code snippets. This project uses ActiveRecord for database management with an SQLite database. You can add, list, search, and delete snippets, making it a handy tool for developers to store reusable code.

## Features
**Add snippets:** Store snippets with titles, code, and tags.
**Search snippets:** Search snippets by title or tags.
**List snippets:** Display all stored snippets.
**Delete snippets:** Remove snippets by their ID.

## Installation
Clone the repository:
```
git clone https://github.com/your-username/code_snippet_manager.git
cd code_snippet_manager
```
Install dependencies: Make sure you have Ruby installed, then run:
```
bundle install
```
Run database migrations: Set up the database schema by running:
```
rake db:migrate
```
Run the application: Start the application with:
```
ruby main.rb
```
## Usage
After running the app, you'll be prompted with a menu of options:

**Add a Snippet:** Add a new code snippet by entering a title, code, and optional tags.
**Search Snippets:** Search for snippets by title or tags.
**List All Snippets:** View all stored snippets.
**Delete a Snippet:** Delete a snippet by its ID.
**Exit:** Exit the application.

## Example Workflow
Add a Snippet:
```
Enter a title: Python for loops
Enter the code snippet: 
for i in range(10):
    print(i)
Enter tags (comma-separated): python, loop
```
Search Snippets:
```
Enter a keyword or tag to search: python
List All Snippets:
bash
Copy code
ID: 1
Title: Python for loops
Tags: python, loop
Code:
for i in range(10):
    print(i)
Created At: 2024-11-18 12:00:00
```
Delete a Snippet:
```
Enter the ID of the snippet to delete: 1
```
Files and Structure
```
code_snippet_manager/
├── app/
│   ├── controllers/
│   │   └── snippet_controller.rb   # Controller logic for handling snippets
│   ├── models/
│   │   └── snippet.rb              # Snippet model for ActiveRecord
├── config/
│   └── environment.rb              # Environment setup and ActiveRecord connection
├── db/
│   ├── migrate/
│   │   └── 01_create_snippets.rb  # Migration for creating the snippets table
│   └── snippets.db                # SQLite database for storing snippets
├── main.rb                         # Main entry point for the CLI application
├── Gemfile                         # Dependency manager for the project
├── Rakefile                        # Rake tasks for database management
└── README.md                       # Project documentation
```
## Future Improvements
**User Authentication:** Add user accounts to store snippets privately.
**Export/Import:** Implement functionality to export/import snippets as JSON or Markdown files.
Web Interface: Transition to a web-based version using Sinatra or Rails.
