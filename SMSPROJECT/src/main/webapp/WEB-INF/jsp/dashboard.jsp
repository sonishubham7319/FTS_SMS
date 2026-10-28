<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- bootstrap css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts & FontAwesome Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    <!-- font awesome icon -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.3.1/css/all.min.css" rel="stylesheet">
    <!-- bootstrap js -->
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
     
    <title>Dashboard</title>
    <style>
        * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
    background-color: #f4f5f0;
    color: #2c3e2d;
}

/* --- Top Header Styling --- */
.top-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #ffffff;
    padding: 15px 30px;
    border-bottom: 1px solid #e0e2db;
}

.header-left {
    display: flex;
    align-items: center;
    gap: 15px;
}

.logo-icon {
    background-color: #555b4e;
    color: white;
    padding: 10px;
    border-radius: 8px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 20px;
}

.school-name {
    font-size: 18px;
    font-weight: bold;
    color: #2c3e2d;
}

.portal-sub {
    font-size: 11px;
    letter-spacing: 1px;
    color: #7f8c7d;
    text-transform: uppercase;
}

.header-right {
    display: flex;
    align-items: center;
    gap: 15px;
}

.user-info {
    text-align: right;
}

.user-name {
    font-weight: 600;
    font-size: 14px;
}

.user-details {
    font-size: 12px;
    color: #7f8c7d;
}

.logout-btn {
    background: none;
    border: none;
    font-size: 18px;
    cursor: pointer;
    color: #555b4e;
}
/* dashboard css */
.dashboard-layout {
            display: grid;
            grid-template-columns: 260px 1fr;
            gap: 20px;
            max-width: 1200px;
            margin: 20px auto;

        }

        /* Left Sidebar Navigation */
        .sidebar {
            background: #ffffff;
            border-radius: 12px;
            padding: 15px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.03);
            height: fit-content;
        }

        .sidebar-menu {
            list-style: none;
        }

        .sidebar-menu li {
            margin-bottom: 6px;
        }

        .sidebar-menu a {
            display: flex;
            align-items: center;
            padding: 10px 12px;
            color: #4a5568;
            text-decoration: none;
            font-size: 13px;
            font-weight: 500;
            border-radius: 6px;
            transition: background 0.2s;
        }

        .sidebar-menu a i {
            margin-right: 12px;
            font-size: 14px;
            color: #718096;
        }

        .sidebar-menu a:hover, .sidebar-menu a.active {
            background-color: #edf2f7;
            color: #1a202c;
        }

        /* Main Content Area */
        .main-content {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        /* Top Section (Profile + Stats Cards) */
        .top-section {
            display: grid;
            grid-template-columns: 280px 1fr 1fr 1fr;
            gap: 20px;
          
        }

        .card {
            background: #ffffff;
            border-radius: 12px;
            padding: 20px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.03);
        }

        /* Profile Card */
        .profile-card {
            text-align: center;
        }

        .profile-avatar {
            width: 55px;
            height: 55px;
            background-color: #334155;
            color: #ffffff;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 16px;
            font-weight: bold;
            margin: 0 auto 10px auto;
        }

        .profile-name {
            font-size: 15px;
            font-weight: bold;
            color: #1e293b;
            margin-bottom: 4px;
        }

        .profile-id {
            font-size: 11px;
            color: #64748b;
            margin-bottom: 15px;
        }

        .profile-details {
            display: flex;
            justify-content: space-between;
            border-top: 1px solid #e2e8f0;
            padding-top: 12px;
            font-size: 10px;
            color: #64748b;
            text-align: left;
        }

        .profile-details span strong {
            display: block;
            color: #0f172a;
            font-size: 11px;
            margin-top: 2px;
        }

        /* Stat Cards */
        .stat-card {
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .stat-card.yellow {
            background-color: #fdf6e2;
            border: 1px solid #f9edd0;
        }

        .stat-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 11px;
            font-weight: bold;
            color: #78350f;
            letter-spacing: 0.5px;
        }

        .stat-value {
            font-size: 24px;
            font-weight: bold;
            color: #1e293b;
            margin: 10px 0 5px 0;
        }

        .stat-footer {
            font-size: 11px;
            color: #64748b;
        }

        .stat-card.dark {
            background-color: #555b4e;
            color: #ffffff;
        }

        .stat-card.dark .stat-header {
            color: #e2e8f0;
        }

        .stat-card.dark .stat-value {
            color: #ffffff;
        }

        .stat-card.dark .stat-footer {
            color: #cbd5e1;
        }

        /* Portal Interactive Services Section */
        .services-section {
            background: #ffffff;
            border-radius: 12px;
            padding: 25px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.03);
        }

        .services-title {
            font-size: 18px;
            font-weight: bold;
            color: #1e293b;
            margin-bottom: 20px;
        }

        .services-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 15px;
        }

        .service-card {
            background-color: #fafaf9;
            border: 1px solid #f3f3f2;
            border-radius: 10px;
            padding: 22px 15px;
            text-align: center;
            text-decoration: none;
            color: #333;
            transition: all 0.2s ease;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .service-card:hover {
            background-color: #ffffff;
            border-color: #cbd5e1;
            box-shadow: 0 4px 12px rgba(0,0,0,0.05);
        }

        .service-card i {
            font-size: 18px;
            color: #475569;
            margin-bottom: 10px;
        }

        .service-card span {
            font-size: 13px;
            font-weight: 500;
            color: #334155;
        }

        /* Responsive Breakpoints */
        @media (max-width: 1200px) {
            .dashboard-layout {
                grid-template-columns: 1fr;
            }
            .top-section {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 768px) {
            .top-section, .services-grid {
                grid-template-columns: 1fr;
            }
        }


    </style>
    
   
</head>
<body>
    <!-- Top Header -->
    <header class="top-header">
        <div class="header-left">
            <div class="logo-icon">
                <i class="fa-solid fa-graduation-cap"></i>
            </div>
            <div>
                <div class="school-name">School Management System</div>
                <div class="portal-sub">Student Portal Dashboard</div>
            </div>
        </div>
        <div class="header-right">
            <div class="user-info">
                <div class="user-name">${teacherFullName}</div>
                <div class="user-details">${stdClass} ${stdSection} RollNo-${stdRollNo}</div>
            </div>
            <!-- Logout Action -->
            <a href="${pageContext.request.contextPath}/" class="logout-btn" title="Logout">
                <i class="fa-solid fa-arrow-right-from-bracket"></i>
            </a>
        </div>
    </header>

   <!-- dashboard starts -->
    <div class="dashboard-layout">
        <!-- Left Sidebar Navigation -->
        <div class="sidebar">
            <ul class="sidebar-menu">
                <li><a href="attendance.jsp" class="active"><i class="fa-solid fa-circle-check"></i> Attendance Ring</a></li>
                <li><a href="study_material.jsp"><i class="fa-solid fa-book-open"></i> Study Material</a></li>
                <li><a href="fee_payments.jsp"><i class="fa-solid fa-credit-card"></i> Fee Payments</a></li>
                <li><a href="fee_receipts.jsp"><i class="fa-solid fa-file-invoice-dollar"></i> Fee Receipts</a></li>
                <li><a href="homework.jsp"><i class="fa-solid fa-clipboard-list"></i> Homework Board</a></li>
                <li><a href="syllabus.jsp"><i class="fa-solid fa-file-lines"></i> Syllabus Tracker</a></li>
                <li><a href="chat.jsp"><i class="fa-solid fa-comments"></i> School Live Chat</a></li>
                <li><a href="complaint.jsp"><i class="fa-solid fa-triangle-exclamation"></i> Complaint Box</a></li>
                <li><a href="report_card.jsp"><i class="fa-solid fa-award"></i> Report Card</a></li>
                <li><a href="routine.jsp"><i class="fa-solid fa-clock"></i> Class Routine</a></li>
                <li><a href="online_classes.jsp"><i class="fa-solid fa-video"></i> Online Classes</a></li>
            </ul>
        </div>

        <!-- Main Content Area -->
        <div class="main-content">
            <!-- Top Section: Profile & Metrics -->
            <div class="top-section">
                <!-- Student Profile Card -->
                <div class="card profile-card">
                    <div class="profile-avatar">AM</div>
                    <div class="profile-name">${teacherFullName}</div>
                    <div class="profile-id">PSC-2026-9483</div>
                    <div class="profile-details">
                        <span>CLASS / SEC <strong>${stdClass} - ${stdSection}</strong></span>
                        <span>ROLL NUMBER <strong>${stdRollNo}</strong></span>
                    </div>
                </div>

                <!-- Attendance Rate Card -->
                <div class="card stat-card yellow">
                    <div class="stat-header">
                        <span>ATTENDANCE RATE</span>
                        <i class="fa-solid fa-circle-check"></i>
                    </div>
                    <div class="stat-value">88%</div>
                    <div class="stat-footer">Academic Threshold is 75%</div>
                </div>

                <!-- Grade Points Card -->
                <div class="card stat-card">
                    <div class="stat-header">
                        <span>GRADE POINTS</span>
                        <i class="fa-solid fa-award"></i>
                    </div>
                    <div class="stat-value">88%</div>
                    <div class="stat-footer">Overall Score Average</div>
                </div>

                <!-- Broadcast Board Card -->
                <div class="card stat-card dark">
                    <div class="stat-header">
                        <span>BROADCAST BOARD</span>
                        <i class="fa-solid fa-bell"></i>
                    </div>
                    <div class="stat-value">2</div>
                    <div class="stat-footer">School Notices Active</div>
                </div>
            </div>

            <!-- Portal Interactive Services Section -->
            <div class="services-section">
                <div class="services-title">Portal Interactive Services</div>
                
                <div class="services-grid">
                    <a href="announcements.jsp" class="service-card">
                        <i class="fa-solid fa-bell"></i>
                        <span>Announcements</span>
                    </a>
                    <a href="student_profile.jsp" class="service-card">
                        <i class="fa-solid fa-user"></i>
                        <span>Student Profile</span>
                    </a>
                    <a href="attendance_ring.jsp" class="service-card">
                        <i class="fa-solid fa-circle-check"></i>
                        <span>Attendance Ring</span>
                    </a>
                    <a href="study_material.jsp" class="service-card">
                        <i class="fa-solid fa-book-open"></i>
                        <span>Study Material</span>
                    </a>

                    <a href="fee_payments.jsp" class="service-card">
                        <i class="fa-solid fa-credit-card"></i>
                        <span>Fee Payments</span>
                    </a>
                    <a href="fee_receipts.jsp" class="service-card">
                        <i class="fa-solid fa-file-invoice-dollar"></i>
                        <span>Fee Receipts</span>
                    </a>
                    <a href="homework_board.jsp" class="service-card">
                        <i class="fa-solid fa-clipboard-list"></i>
                        <span>Homework Board</span>
                    </a>
                    <a href="syllabus_tracker.jsp" class="service-card">
                        <i class="fa-solid fa-file-lines"></i>
                        <span>Syllabus Tracker</span>
                    </a>

                    <a href="school_live_chat.jsp" class="service-card">
                        <i class="fa-solid fa-comments"></i>
                        <span>School Live Chat</span>
                    </a>
                    <a href="complaint_box.jsp" class="service-card">
                        <i class="fa-solid fa-triangle-exclamation"></i>
                        <span>Complaint Box</span>
                    </a>
                    <a href="report_card.jsp" class="service-card">
                        <i class="fa-solid fa-award"></i>
                        <span>Report Card</span>
                    </a>
                    <a href="class_routine.jsp" class="service-card">
                        <i class="fa-solid fa-clock"></i>
                        <span>Class Routine</span>
                    </a>

                    <a href="online_classes.jsp" class="service-card">
                        <i class="fa-solid fa-video"></i>
                        <span>Online Classes</span>
                    </a>
                    <a href="calendar.jsp" class="service-card">
                        <i class="fa-solid fa-calendar-days"></i>
                        <span>A-Calendar</span>
                    </a>
                    <a href="online_exams.jsp" class="service-card">
                        <i class="fa-solid fa-file-pen"></i>
                        <span>Online Exams</span>
                    </a>
                    <a href="school_location.jsp" class="service-card">
                        <i class="fa-solid fa-location-dot"></i>
                        <span>School Location</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- dashboard ends -->
   
</body>
</html>