# Member 5- AI Services and Administration

## 1. Module Overview

This module provides AI service management and administrative functionality for the AI Projects and Services Freelancing Platform.

The module will be implemented using PHP,MariaDB,HTML,CSS,Bootstrap 5 and JavaScript.

## 2. Main Responsibilities

- Manage AI skills and service Categories.
- Manage and monitor user accounts.
- Monitor freelancer service listings.
- Monitor projects and payment records.
- Manage complaints and disputes.
- Implement the service/project fee SQL function.
- Develop and test the administrative web interface.

## 3. Functional Requirements

### AI Skills and Service Category Management

- View existing AI skills and service categories.
- Add new service categories.
- Update category information.
- Activate or deactivate categories.
- Monitor freelancer service listings.
- Coordinate skill management with Member 1.

## User Account Administration

- View registered users.
- Search and filter user accounts.
- Manage account status according to admin permissions.
- Prevent unauthorized access to administrative functions.

### Projects and Payment Monitoring

- View project information and statuses.
- Monitor project assignments.
- view payament records.
- Use existing data from other modules without duplicating records.

### Complaint and dispute Management

- View reported complaints and disputes.
- Track dispute status.
- Record administrative resolutions.
- Maintain dispute history.

### SQL Functions

- Develop a MariaDB function to calculate service/project fees.
- Confirms the calculating rules with the team.
- Test the functions using valid and invalid inputs.
- Documents the function and its execution results.

## 4. Database Requirements

 Proposed entities and shared references:

- ServiceCategory
- AIService
- Skil
- Dispute
- User and administrative roles
- Freelancer 
- Client
- Project
- Assignment
- Payment

 Entity ownership,attributes,primary keys,foreign keys and relationships must be agreed upon with the team

## 5. Module Dependencies

- Member 1:Freelancer profiles,skills and services.
- Member 2:Client and project information.
- Member 3:Proposals and assignments.
- Member 4:Payment and review information.
- Member 6:Administrative data for reporting.
- Shared SQL:Database schema and constraints.
- Shared UI:Common layouts and styling.
- Shared authentication:User roles and permissions.

## 6. Security Requirements

- Role-based access control.
- Server-side input validation.
- Prepared SQL statements.
- Database integrity constraints.
- Safe error handling.

## 7. Testing Requirements

- Test services category creation and updates.
- Test duplicate and invalid category inputs.
- Test account status management.
- Test unauthorized access prevention.
- Test dispute management.
- Test the service/project fee function.
- Test integration with other modules.

## 8. Expected Deliverables

- ER/EER desing and relational mapping.
- Normalized database desing.
- SQL tables and constraints.
- Meaningful sample data.
- Working administrative frontend.
- PHP backend and database connectivity.
- Service/project fee SQL function.
- Test cases and execution evidence.
- Module documentation.
- Evaluation and future improvements.

## 9. Pending Team Decisions

- Final entity and attribute names.
- Primary and foreign key conventions.
- Shared authentication and role structure.
- Service and skill ownership.
- Account and dispute status values.
- Service/project fee calculation rules.
- Shared databse and UI integration conventions.
