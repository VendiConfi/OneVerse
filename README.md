<h1 align="center">OneVerse: Empowering Indian Space Startups</h1>

<p align="center">
  <strong>OneVerse</strong> is a comprehensive web platform designed to uplift the Indian space startup ecosystem by providing a range of solutions including funding access, talent acquisition, expert guidance, and seamless networking. The platform aims to bridge the gap between space startups, investors, educational institutions, and domain experts.
</p>

<p align="center">
  <a href="#overview">Overview</a> •
  <a href="#features">Features</a> •
  <a href="#data-flow">Data Flow</a> •
  <a href="#technology-stack">Technology Stack</a> •
  <a href="#how-to-use">How to Use</a> •
  <a href="#contact">Contact</a>
</p>

## Overview

India's space industry is witnessing exponential growth with the emergence of innovative startups. However, these startups often face challenges such as limited funding opportunities, difficulties in finding skilled talent, and lack of expert guidance. OneVerse addresses these challenges by offering an integrated platform where startups can register, connect with investors, collaborate with institutions, and seek advice from experts.

## Features

### Startup Registration

Startups can sign up on OneVerse by providing crucial details such as company name, employee count, revenue, and open vacancies. This information is stored in the `startup_details` table.

### Investor Engagement

Investors interested in space startups can explore a curated list of investment opportunities. They can view startup profiles, funding requirements, and funding types.

### Institute Collaboration

Educational institutions looking to contribute to the space sector can register on the platform. They can showcase the number of students interested in applying for space startups and indicate their preferred mode of engagement (online/offline).

### Expert Mentorship

Experienced professionals from the space industry can join OneVerse as mentors. Startups can seek guidance from these experts to navigate challenges and refine their strategies.

### Unified Credentials

All registered users have unified login credentials. The `user_credentials` table stores usernames, passwords, and user roles, ensuring secure authentication.

### Role-Specific Landing Pages

Upon successful login, users are directed to personalized landing pages based on their roles. Whether you're a startup, investor, institute, or expert, you'll find tailored content and features.

## Data Flow

1. Startups, investors, institutions, and experts register on the platform.
2. Registered user data is stored in the respective tables (`startup_details`, `investor_details`, `institution_details`, `expert_details`).
3. Unified login credentials are maintained in the `user_credentials` table.
4. Users log in using their credentials and are directed to role-specific landing pages.

## Table Structure

The following tables store data for different user roles:

### `startup_details`

| Column             | Data Type    | Constraints       |
|--------------------|--------------|-------------------|
| company_name       | VARCHAR(255) | NOT NULL          |
| num_employees      | INT          | NOT NULL          |
| share_structure    | VARCHAR(255) | NOT NULL          |
| revenue            | VARCHAR(255) | NOT NULL          |
| num_vacancies      | INT          | NOT NULL          |
| username           | VARCHAR(255) | NOT NULL          |
| password           | VARCHAR(255) | NOT NULL          |

### `institute_details`

| Column                  | Data Type    | Constraints       |
|-------------------------|--------------|-------------------|
| institute_name          | VARCHAR(255) | NOT NULL          |
| approved_by             | VARCHAR(255) | NOT NULL          |
| num_students            | INT          | NOT NULL          |
| num_final_year_students | INT          | NOT NULL          |
| preferred_mode          | VARCHAR(255) | NOT NULL          |
| username                | VARCHAR(255) | NOT NULL          |
| password                | VARCHAR(255) | NOT NULL          |

### `investor_details`

| Column          | Data Type    | Constraints       |
|-----------------|--------------|-------------------|
| name            | VARCHAR(255) | NOT NULL          |
| email           | VARCHAR(255) | NOT NULL          |
| funding_type    | VARCHAR(255) | NOT NULL          |
| funding_amount  | VARCHAR(255) | NOT NULL          |
| username        | VARCHAR(255) | NOT NULL          |
| password        | VARCHAR(255) | NOT NULL          |

### `expert_details`

| Column        | Data Type    | Constraints       |
|---------------|--------------|-------------------|
| name          | VARCHAR(255) | NOT NULL          |
| email         | VARCHAR(255) | NOT NULL          |
| experience    | VARCHAR(255) | NOT NULL          |
| qualification | VARCHAR(255) | NOT NULL          |
| username      | VARCHAR(255) | NOT NULL          |
| password      | VARCHAR(255) | NOT NULL          |

### `user_credentials`

| Column     | Data Type    | Constraints       |
|------------|--------------|-------------------|
| username   | VARCHAR(255) | NOT NULL          |
| password   | VARCHAR(255) | NOT NULL          |
| role       | VARCHAR(50)  | NOT NULL          |


## Technology Stack

- Java
- JSP (JavaServer Pages)
- MySQL Database
- Apache Tomcat

## How to Use

1. Clone the repository: `git clone https://github.com/yourusername/oneverse.git`
2. Install the required dependencies.
3. Set up your MySQL database and configure the `application.properties` file.
4. Run the application using your preferred IDE or terminal.


## Contact

For any inquiries or support, please contact our team at contact@oneverse.com.

---

<p align="center">
  &copy; 2023 OneVerse. All rights reserved.
</p>
