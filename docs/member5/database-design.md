
# Member 5 - Database Design

## 1. Introduction

This document describes the proposed database design for the AI Services and Administration module of the AI Projects and Services Freelancing Platform.

The design supports AI skills, service categories, freelancer services, user administration, dispute management and fee calculations.

## 2. Proposed Database Entities

### 2.1 ServiceCategory

Stores the categories of AI services available on the platform.

| Attribute | Data Type | Constraint |
|---|---|---|
| category_id | INT | Primary Key |
| category_name | VARCHAR(100) | Unique, Not Null |
| description | TEXT | Optional |
| status | VARCHAR(20) | Not Null |
| created_at | DATETIME | Not Null |

### 2.2 Skill

Stores AI-related skills available on the platform.

| Attribute | Data Type | Constraint |
|---|---|---|
| skill_id | INT | Primary Key |
| skill_name | VARCHAR(100) | Unique, Not Null |
| description | TEXT | Optional |
| category_id | INT | Foreign Key |

### 2.3 FreelancerSkill

Resolves the many-to-many relationship between freelancers and skills.

| Attribute | Data Type | Constraint |
|---|---|---|
| freelancer_id | INT | Primary Key, Foreign Key |
| skill_id | INT | Primary Key, Foreign Key |

The combination of freelancer_id and skill_id forms a composite primary key.

### 2.4 Service

Stores AI services offered by freelancers.

| Attribute | Data Type | Constraint |
|---|---|---|
| service_id | INT | Primary Key |
| freelancer_id | INT | Foreign Key |
| category_id | INT | Foreign Key |
| service_title | VARCHAR(150) | Not Null |
| description | TEXT | Not Null |
| price | DECIMAL(10,2) | Non-negative |
| status | VARCHAR(20) | Not Null |
| created_at | DATETIME | Not Null |

### 2.5 AdminAccount

Represents an administrator authorized to manage platform operations.

| Attribute | Data Type | Constraint |
|---|---|---|
| admin_id | INT | Primary Key |
| user_id | INT | Foreign Key, Unique |

Authentication credentials should be managed through the shared authentication system.

A separate AdminAccount table may not be required if the shared user table supports administrator roles.

### 2.6 Dispute

Stores disputes reported by platform users.

| Attribute | Data Type | Constraint |
|---|---|---|
| dispute_id | INT | Primary Key |
| project_id | INT | Foreign Key |
| reported_by | INT | Foreign Key |
| admin_id | INT | Foreign Key, Nullable |
| description | TEXT | Not Null |
| status | VARCHAR(20) | Not Null |
| resolution | TEXT | Nullable |
| created_at | DATETIME | Not Null |
| resolved_at | DATETIME | Nullable |

## 3. Entity Relationships

- One service category can contain many skills.
- One service category can contain many services.
- One freelancer can offer many services.
- One freelancer can possess many skills.
- One skill can belong to many freelancers.
- One project can have multiple disputes.
- One administrator can manage multiple disputes.
- One user can report multiple disputes.

## 4. Normalization

### First Normal Form (1NF)

- Each attribute contains a single atomic value.
- Each entity has a primary key.
- Repeating groups are eliminated.

### Second Normal Form (2NF)

- All non-key attributes must depend on the entire primary key.
- FreelancerSkill resolves the many-to-many relationship between freelancers and skills.

### Third Normal Form (3NF)

- Non-key attributes must not depend on other non-key attributes.
- Category information is stored separately from service information.
- Skill information is stored separately from freelancer information.
- Shared user information is not duplicated in administrative tables.

The final schema must be reviewed for functional dependencies before confirming 3NF compliance.

## 5. Proposed Database Constraints

- Primary keys uniquely identify records.
- Foreign keys maintain referential integrity.
- Category and skill names must be unique.
- Required attributes cannot contain NULL values.
- Service prices cannot be negative.
- Account and dispute statuses must use approved values.
- Duplicate freelancer-skill combinations must be prevented.

## 6. Proposed SQL Function

A service or project fee calculation function will be implemented.

Proposed inputs:

- Transaction amount.
- Platform fee percentage.

Proposed calculation:

Platform Fee = Transaction Amount * Fee Percentage / 100

The final fee rules must be agreed upon with the team before implementation.

## 7. Dependencies on Other Modules

- Member 1: Freelancer accounts and profiles.
- Member 2: Client accounts and projects.
- Member 3: Proposals and assignments.
- Member 4: Payments and fee calculation integration.
- Member 6: Administrative reporting.
- Shared SQL: Database naming and constraint conventions.
- Shared UI: Common interface components.
- Shared Authentication: User roles and access control.

## 8. Pending Team Confirmation

- Final entity and attribute names.
- Shared user and administrator structure.
- Ownership of skills and freelancer services.
- Foreign key references.
- Approved account and dispute statuses.
- Platform fee calculation rules.
- Database engine and SQL syntax.
- Integration with the shared database schema.

## 9. Implementation Plan

- Confirm the database design with team members.
- Prepare the ER/EER diagram.
- Complete relational mapping.
- Implement SQL tables and constraints.
- Insert meaningful sample data.
- Implement the fee calculation function.
- Develop PHP backend functionality.
- Develop administrative user interfaces.
- Test database operations.
- Integrate and test with other modules.

## 10. Design Status

This document represents the preliminary database design.

The final implementation will follow the agreed shared database structure to maintain consistency and avoid integration conflicts.
