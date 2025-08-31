# 🚀 Online Bidding System

A Java-based web application for managing online auctions and bidding processes. Built with JSP, Servlets, and MySQL database.

## ✨ Features

- **User Authentication**: Three-tier user system (Admin, Seller, Bidder)
- **Product Management**: List, update, and manage auction items
- **Real-time Bidding**: Live bidding system with instant updates
- **Payment Processing**: Integrated payment system for transactions
- **Feedback System**: User rating and review functionality
- **Admin Dashboard**: Comprehensive system management interface
- **Responsive Design**: Mobile-friendly Bootstrap UI

## 🛠️ Tech Stack

- **Backend**: Java (JSP & Servlets)
- **Database**: MySQL
- **Frontend**: HTML, CSS, JavaScript
- **UI Framework**: Bootstrap 4
- **Server**: Apache Tomcat
- **IDE**: Eclipse Dynamic Web Project

## �� User Roles

### 👨‍💼 Admin
- System oversight and management
- User account management
- System configuration
- Analytics and reporting

### 🛍️ Seller
- Product listing and management
- Auction creation and monitoring
- Sales tracking and history
- Customer communication

### 🎯 Bidder
- Browse available items
- Place and manage bids
- Purchase history
- Feedback submission

## 🚀 Getting Started

### Prerequisites

- Java JDK 8 or higher
- Apache Tomcat 8.5 or higher
- MySQL 5.7 or higher
- Eclipse IDE (recommended)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/online-bidding-system.git
   cd online-bidding-system
   ```

2. **Database Setup**
   - Import `DataBase/bidding_system.sql` into your MySQL server
   - Update database connection settings in `src/main/java/utill/DBConnect.java`

3. **Configure Tomcat**
   - Deploy the project to Apache Tomcat
   - Set the context path to `/BiddingSystem`

4. **Run the Application**
   - Start Tomcat server
   - Access the application at `http://localhost:8080/BiddingSystem`

## 📁 Project Structure
      BiddingSystem/
      ├── src/
      │ ├── main/
      │ │ ├── java/
      │ │ │ ├── biddingsignuppackage/ # Signup functionality
      │ │ │ ├── dao/ # Data Access Objects
      │ │ │ ├── model/ # Data models
      │ │ │ ├── servlet/ # Servlet controllers
      │ │ │ └── utill/ # Utility classes
      │ │ └── webapp/
      │ │ ├── WEB-INF/
      │ │ │ ├── lib/ # JAR dependencies
      │ │ │ └── web.xml # Web configuration
      │ │ ├── .jsp # JSP pages
      │ │ └── home.jsp # Landing page
      ├── DataBase/
      │ └── bidding_system.sql # Database schema
      └── build/ # Compiled classes
