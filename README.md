# Breast Cancer Detection System

🏥 **AI-Powered Breast Cancer Detection using Laravel & Bootstrap**

A comprehensive web application for analyzing breast X-ray images and generating detailed medical reports with AI simulation.

## 🎯 Project Overview

This Laravel-based medical imaging system provides automated breast cancer detection through X-ray analysis, featuring a complete workflow from image upload to detailed medical reporting.

## ✨ Features

- 🔐 **User Authentication** - Secure registration and login system
- 📤 **Image Upload** - Drag & drop X-ray image upload with validation
- 🤖 **AI Analysis Simulation** - Realistic cancer detection with confidence scoring
- 📊 **Medical Reports** - Comprehensive analysis reports with recommendations
- 📱 **Dashboard** - Statistics, scan history, and management tools
- 🎨 **Responsive UI** - Bootstrap 5 mobile-friendly interface
- 🔒 **Security** - File validation, authentication, and access control

## 🛠 Technology Stack

- **Backend**: Laravel 10 (PHP 8.1+)
- **Frontend**: Bootstrap 5, HTML5, CSS3, JavaScript
- **Database**: MySQL
- **Authentication**: Laravel Sanctum
- **File Storage**: Laravel Storage System
- **Image Processing**: Intervention Image (optional)

## 📋 System Requirements

- PHP 8.1 or higher
- Composer
- MySQL 5.7+ or MariaDB
- Node.js (optional, for asset compilation)

## 🚀 Installation

### Quick Setup
```bash
# Clone the repository
git clone https://github.com/yourusername/breast-cancer-detection.git
cd breast-cancer-detection

# Install dependencies
composer install

# Environment setup
cp .env.example .env
php artisan key:generate

# Database setup
php artisan migrate

# Storage link
php artisan storage:link

# Start development server
php artisan serve
```

### Manual Setup
1. **Install PHP & Composer**
   - Download PHP from: https://php.net/downloads.php
   - Install Composer from: https://getcomposer.org/download/

2. **Configure Environment**
   ```bash
   cp .env.example .env
   # Edit .env with your database credentials
   ```

3. **Database Configuration**
   ```env
   DB_CONNECTION=mysql
   DB_HOST=127.0.0.1
   DB_PORT=3306
   DB_DATABASE=breast_cancer_detection
   DB_USERNAME=your_username
   DB_PASSWORD=your_password
   ```

4. **Run Migrations**
   ```bash
   php artisan migrate
   ```

## 🏗 Project Structure

```
breast-cancer-detection/
├── app/
│   ├── Http/Controllers/
│   │   ├── AuthController.php          # Authentication logic
│   │   ├── DashboardController.php     # Dashboard functionality
│   │   └── XrayScanController.php      # Main scan processing
│   └── Models/
│       ├── User.php                    # User model
│       ├── XrayScan.php               # X-ray scan model
│       └── CancerReport.php           # Analysis report model
├── database/migrations/               # Database schema
├── resources/views/                   # Blade templates
├── routes/web.php                     # Application routes
└── public/                           # Public assets
```

## 📊 Database Schema

### Users Table
- User authentication and profile information
- Role-based access (doctor, admin)
- Specialization tracking

### XRay Scans Table
- Patient information and scan metadata
- File storage references
- Processing status tracking

### Cancer Reports Table
- AI analysis results and confidence scores
- Detailed findings and recommendations
- Doctor notes and annotations

## 🎮 Usage

### 1. User Registration
- Navigate to `/register`
- Fill in professional details
- Login with credentials

### 2. Upload X-ray
- Access "New Scan" from dashboard
- Enter patient information
- Upload X-ray image (JPEG, PNG, JPG)
- Submit for analysis

### 3. View Results
- AI processes the image (simulation)
- Detailed report generated with:
  - Detection result (Benign/Malignant/Inconclusive)
  - Confidence percentage
  - Analysis details
  - Medical recommendations

### 4. Dashboard Management
- View scan history
- Track statistics
- Download images and reports
- Monitor system usage

## 🧪 AI Analysis Features

### Detection Capabilities
- **Benign Detection**: 75-95% confidence
- **Malignant Detection**: 70-90% confidence  
- **Inconclusive Results**: 40-69% confidence

### Analysis Details
- Mass detection and sizing
- Calcification identification
- Breast density assessment
- Image quality evaluation
- Processing time tracking

### Recommendations
- **Benign**: Continue routine screening
- **Malignant**: Urgent oncologist consultation
- **Inconclusive**: Additional imaging recommended

## 🔒 Security Features

- ✅ User authentication and authorization
- ✅ Secure file upload with validation
- ✅ CSRF protection
- ✅ SQL injection prevention
- ✅ Access control (users can only view own scans)
- ✅ Password hashing and encryption

## 📱 Responsive Design

- Mobile-friendly Bootstrap interface
- Drag & drop file upload
- Touch-optimized interactions
- Print-friendly reports
- Progressive enhancement

## 🎓 Academic Context

### Educational Objectives
This project demonstrates:
- Modern web development with Laravel MVC
- Medical imaging application development
- Database design for healthcare systems
- User interface design for medical professionals
- Security implementation in healthcare apps

### Learning Outcomes
- Full-stack web development
- Healthcare software requirements
- File handling and image processing
- User authentication systems
- Responsive web design principles

## ⚠️ Medical Disclaimer

**IMPORTANT**: This system is designed for educational and demonstration purposes only. It should not be used for actual medical diagnosis or treatment decisions. Always consult qualified healthcare professionals for proper medical evaluation and care.

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 Authors

- **[Your Name]** - *Initial work* - [YourGitHub](https://github.com/yourusername)

## 🙏 Acknowledgments

- Laravel Framework for robust backend architecture
- Bootstrap for responsive UI components
- Medical imaging community for inspiration
- Academic advisors for project guidance

## 📞 Support

For support and questions:
- Create an issue in this repository
- Contact: [your.email@university.edu]
- Documentation: Check the `/docs` folder

---

**🏥 Developed as an undergraduate computer science project demonstrating modern web development practices in healthcare technology.**