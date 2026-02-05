# Item Management REST API

This is a simple Java Spring Boot REST API for managing items.

## Features
- Add new item
- Get item by ID
- In-memory storage
- Input validation

## Tech Stack
- Java
- Spring Boot
- Maven

## How To Run

1. Open project in IDE
2. Run ItemApiApplication.java
3. Server runs on port 8080

## API Endpoints

### Add Item
POST /api/items

Request Body:
{
  "name": "Laptop",
  "description": "Gaming Laptop",
  "price": 50000
}

### Get Item
GET /api/items/{id}

Example:
GET /api/items/1

## Notes
- Data is stored in memory (ArrayList)
- Data will be lost on restart
