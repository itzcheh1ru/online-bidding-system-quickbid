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

## 📋 User Roles

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

```
BiddingSystem/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   ├── biddingsignuppackage/    # Signup functionality
│   │   │   ├── dao/                     # Data Access Objects
│   │   │   ├── model/                   # Data models
│   │   │   ├── servlet/                 # Servlet controllers
│   │   │   └── utill/                   # Utility classes
│   │   └── webapp/
│   │       ├── WEB-INF/
│   │       │   ├── lib/                 # JAR dependencies
│   │       │   └── web.xml              # Web configuration
│   │       ├── *.jsp                    # JSP pages
│   │       └── home.jsp                 # Landing page
├── DataBase/
│   └── bidding_system.sql               # Database schema
└── build/                               # Compiled classes
```

## 🔧 Configuration

### Database Connection
Update the database connection settings in `src/main/java/utill/DBConnect.java`:

```java
private static final String URL = "jdbc:mysql://localhost:3306/bidding_system";
private static final String USERNAME = "your_username";
private static final String PASSWORD = "your_password";
```

### Tomcat Configuration
- Set Java version to 8 or higher
- Allocate sufficient memory: `-Xmx1024m`
- Configure context path in `server.xml`

## 🎯 Key Features Explained

### Authentication System
- Secure login for all user types
- Session management
- Role-based access control

### Bidding Process
1. Seller lists an item with starting price
2. Bidders place bids on the item
3. System tracks highest bidder
4. Auction ends with winner determination

### Payment Integration
- Secure payment processing
- Transaction history
- Payment status tracking

## 🐛 Troubleshooting

### Common Issues

1. **Database Connection Error**
   - Verify MySQL is running
   - Check connection credentials
   - Ensure database exists

2. **Tomcat Deployment Issues**
   - Check Java version compatibility
   - Verify WAR file deployment
   - Check Tomcat logs for errors

3. **JSP Compilation Errors**
   - Ensure all JAR dependencies are in WEB-INF/lib
   - Check Java version compatibility

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Your Name**
- GitHub: [@itzcheh1ru](https://github.com/itzcheh1ru)
- LinkedIn: [itzcheh1ru](https://linkedin.com/in/itzcheh1ru)

## 🙏 Acknowledgments

- Bootstrap for the responsive UI framework
- Apache Tomcat for the servlet container
- MySQL for the database management system
- Eclipse for the development environment

## 📞 Support

If you have any questions or need help, please open an issue on GitHub or contact the maintainer.

---

⭐ **Star this repository if you found it helpful!**
