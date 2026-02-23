"""
Sample code for Assignment 3 - CodeSweep scanning.
Contains intentional vulnerabilities for AppScan CodeSweep to detect.
"""

import sqlite3

# Hardcoded credentials - CodeSweep should flag this
DB_PASSWORD = "admin123546"
API_KEY = "sk-1234567890abcdef"

def get_user(username):
    """Fetch user by username - vulnerable to SQL injection."""
    conn = sqlite3.connect("users.db")
    cursor = conn.cursor()
    # Unsafe: user input concatenated into query
    query = "SELECT * FROM users WHERE name = '" + username + "'"
    cursor.execute(query)
    return cursor.fetchone()
