# AI Projects & Services Freelancing Platform
**PUSL2019 – Information Management & Retrieval**

**Project Type:** Database-Driven Web Application  
**Team Size:** 6 Members  
**Repository:** AI-Project-and-Services-Freelancing-Platform  
**Repository Visibility:** Public  
**Development Period:** 23 November – 7 December 2026  
**Submission Deadline:** 10 December 2026, 4:00 PM (Sri Lanka Time)  
**Current Status:** Under Development

---

## 1. Project Overview

The AI Projects & Services Freelancing Platform is a database-driven web application that connects clients and organizations with freelancers offering AI-related skills and services.

Clients can publish projects, evaluate proposals, select freelancers, track project assignments, and record payments.

Freelancers can create profiles, manage their skills, browse projects, submit proposals, manage assignments, and review clients.

Administrators manage users, AI service categories, and disputes, while managers monitor platform activities through dashboards and reports.

The main academic focus is relational database design, ER/EER modelling, normalization, SQL constraints, advanced SQL operations, and integration with a working web application.

The platform focuses on AI-related freelancing services. Training an artificial intelligence model and integrating a real payment gateway are outside the proposed scope.

## 2. Project Objectives

- Develop a centralized freelancing platform for AI projects and services.
- Manage freelancer and client accounts securely.
- Allow clients to publish projects and evaluate proposals.
- Allow freelancers to advertise skills and apply for projects.
- Track assignments, progress, payments, and reviews.
- Provide administration and reporting features.
- Design a normalized relational database up to Third Normal Form (3NF).
- Implement SQL triggers, functions, views, and stored procedures.
- Integrate six independently developed modules into one functional system.

## 3. Main System Features

**Freelancer Features**
- Registration, login, and profile management.
- AI skill and service management.
- Project browsing and proposal submission.
- Assignment and progress tracking.
- Payment history and client reviews.

**Client Features**
- Registration, login, and profile management.
- Project creation and requirement management.
- Proposal evaluation and freelancer selection.
- Assignment monitoring.
- Payment recording and freelancer reviews.

**Administrator Features**
- User account management.
- AI skills and service category management.
- Project and payment monitoring.
- Complaint and dispute management.

**Manager Features**
- Platform activity dashboard.
- Freelancer and client reports.
- Project and assignment summaries.
- Payment and revenue reporting.
- Project and revenue trend analysis.

## 4. Technologies Used

| Technology | Purpose |
|---|---|
| HTML5 | Web page structure |
| CSS3 | Styling |
| Bootstrap 5 | Responsive user interface |
| JavaScript | Frontend interactions |
| PHP | Backend development |
| MariaDB | Relational database |
| Apache / XAMPP | Local development server |
| Git | Version control |
| GitHub | Collaboration and project hosting |
| GitHub Desktop | Branch and commit management |
| VS Code | Code development |
| diagrams.net | ER/EER and system diagrams |

All members must use compatible PHP and MariaDB versions. SQL scripts must follow MariaDB syntax consistently.

## 5. Project Folder Structure

```text
AI-Project-and-Services-Freelancing-Platform/
│
├── admin/
│   ├── accounts/
│   ├── services/
│   └── disputes/
├── auth/
├── client/
│   ├── projects/
│   └── profiles/
├── freelancer/
│   ├── profiles/
│   └── skills/
├── proposals/
├── assignments/
├── payments/
├── reviews/
├── reporting/
│
├── database/
│   ├── schema.sql
│   ├── sample_data.sql
│   ├── triggers.sql
│   ├── functions.sql
│   ├── views.sql
│   └── procedures.sql
│
├── docs/
│   ├── design/
│   ├── report/
│   └── contributions/
│
├── includes/
│   ├── config/
│   └── helpers/
│
├── public/
│   ├── index.php
│   └── assets/
│
├── tests/
├── .gitignore
└── README.md
```

Empty directories can contain `.gitkeep` files until implementation begins.

## 6. Proposed Database Design

**Database Name:** `ai_freelancing_db`

The proposed database contains 15 tables. This is an initial design, not a fixed table-count requirement.

| Table | Purpose |
|---|---|
| UserAccount | Authentication and user roles |
| Freelancer | Freelancer profiles |
| Client | Client profiles |
| AISkill | AI skill information |
| AIService | AI service categories |
| FreelancerSkill | Freelancer–skill relationships |
| FreelancerService | Freelancer–service relationships |
| Project | Client projects |
| ProjectSkill | Skills required by projects |
| ProjectRequirement | Project requirements |
| Proposal | Freelancer proposals |
| Assignment | Accepted project assignments |
| Payment | Assignment payment records |
| Review | Client and freelancer reviews |
| Dispute | Complaints and disputes |

**Main database rules**

- One client can create multiple projects.
- One project can require multiple AI skills.
- Freelancers can possess multiple skills and offer multiple services.
- Freelancers can submit proposals for different projects.
- A project can have multiple accepted proposals and assignments.
- An assignment can contain multiple payment records.
- Clients and freelancers can review completed assignments.
- Role-based access determines which functions each user can perform.

The team must finalize attributes, keys, relationships, cardinalities, and constraints before creating the final database schema.

## 7. Advanced SQL Requirements

| SQL Object | Responsibility | Member |
|---|---|---|
| View 1 | Freelancer project summary | 1 |
| View 2 | Project payment/revenue summary | 6 |
| Procedure 1 | Freelancer registration/search | 1 |
| Procedure 2 | Create client project | 2 |
| Trigger 1 | Update project status after assignment | 3 |
| Trigger 2 | Maintain payment status/total | 4 |
| Function 1 | Calculate freelancer average rating | 4 |
| Function 2 | Calculate service/project fee | 5 |

Every SQL object must be implemented, tested, explained, and supported with screenshots.

## 8. Six-Member Workload Distribution

| Member | Module | Main Responsibilities |
|---|---|---|
| Member 1 | Freelancer Management | Freelancer profiles, skills, frontend, backend, SQL view and stored procedure |
| Member 2 | Client & Project Management | Client profiles, projects, requirements, frontend, backend and stored procedure |
| Member 3 | Proposals & Assignments | Proposal submission, selection, assignment tracking and SQL trigger |
| Member 4 | Payments & Reviews | Payment records, ratings, reviews, SQL trigger and function |
| Member 5 | AI Services & Administration | Service categories, account administration, disputes and SQL function |
| Member 6 | Reporting & Analytics | Dashboards, reports, revenue queries and SQL view |

Every member is responsible for their own database contribution, frontend, backend, testing, and documentation.

All members participate in shared database design, integration, and testing. Tasks should be adjusted if actual workloads become significantly unequal.

## 9. GitHub Repository and Branch Structure

**Repository:** `AI-Project-and-Services-Freelancing-Platform`

**Branch structure**

```text
main
 └── develop
      ├── member1/freelancer
      ├── member2/client-project
      ├── member3/proposals
      ├── member4/payments-reviews
      ├── member5/services-admin
      ├── member6/reporting
      ├── shared/ui
      └── shared/sql
```

**Branch purposes**

- `main`: Final stable and tested project.
- `develop`: Integration branch for completed modules.
- `member1` to `member6`: Individual development branches.
- `shared/ui`: Shared UI layouts, styling, and reusable frontend components.
- `shared/sql`: Shared database schema and coordinated SQL changes.

The shared branches are maintained collaboratively and do not replace individual member contributions.

## 10. GitHub Collaboration Workflow

1. Each member clones the repository.
2. Each member selects their assigned development branch.
3. Members develop and test their assigned features.
4. Members commit meaningful changes and push their branches.
5. Completed features are submitted through pull requests targeting `develop`.
6. Other members review the changes.
7. Approved and tested changes are merged into `develop`.
8. Members regularly merge updated `develop` changes into their own branches.
9. Integration problems are identified and fixed throughout development.
10. Once the complete application passes testing, `develop` is merged into `main`.

Members should not independently modify shared database structures without coordinating with the team.

## 11. Fifteen-Day Development Plan

All six members must have meaningful assigned work across 15 working days.

| Days | Development Phase | Main Activities |
|---|---|---|
| 1–3 | Planning and Design | Requirements, ER/EER diagrams, relational mapping, normalization, shared interfaces |
| 4–6 | Database Development | Tables, constraints, sample data, database integration |
| 7–9 | Web Development | Frontend, backend, forms, database connectivity |
| 10–11 | Advanced SQL | Triggers, functions, views, procedures and testing |
| 12–13 | Integration and Testing | Cross-module workflows, debugging, integration testing |
| 14–15 | Finalization | Documentation, screenshots, evaluation, presentation preparation |

**Total planned contribution: 90 member-days (6 members × 15 days).**

Each member must complete actual development, testing, documentation, or review work during their allocated days.

## 12. GitHub Contribution Evidence

Each member should maintain an individual contribution record under:

`docs/contributions/`

Suggested filenames:

```text
member1-contributions.md
member2-contributions.md
member3-contributions.md
member4-contributions.md
member5-contributions.md
member6-contributions.md
```

Each record should contain:

- Date of work.
- Task completed.
- Files created or modified.
- Relevant commit links.
- Pull request or issue references.
- Testing results or screenshots.
- Problems encountered and solutions.

Commits must reflect genuine work. Do not fabricate dates or create meaningless commits merely to increase contribution counts.

## 13. Continuous Integration Checkpoints

| Checkpoint | Expected Outcome |
|---|---|
| Day 3 | Shared ERD, naming conventions and interfaces approved |
| Day 6 | Database tables, foreign keys and sample data integrated |
| Day 9 | Web modules connected to the shared database |
| Day 11 | Advanced SQL objects tested |
| Day 13 | Complete workflows tested and integration errors resolved |
| Day 15 | Final tested application and documentation ready |

The team must not wait until the last day to combine independently developed modules.

## 14. Local Installation and Setup

**Required software**

- Visual Studio Code
- XAMPP
- Git and GitHub Desktop
- Web browser
- diagrams.net

**Setup instructions**

1. Install the required software.
2. Clone the public GitHub repository.
3. Place the project in the XAMPP `htdocs` directory, or configure Apache to serve the cloned folder.
4. Start Apache and the MariaDB service using XAMPP.
5. Open phpMyAdmin.
6. Create a database named `ai_freelancing_db` using an agreed `utf8mb4` collation.
7. Import the finalized SQL scripts in the documented dependency order.
8. Configure the local database connection using private credentials.
9. Open the application in a browser.

**Example local URL**

`http://localhost/AI-Project-and-Services-Freelancing-Platform/public/index.php`

The application setup will be finalized after the database schema and backend are implemented.

## 15. Security Requirements

- Secure password hashing.
- Prepared SQL statements.
- Server-side input validation.
- Session management.
- Role-based access control.
- Database constraints.
- SQL injection protection.
- Safe error handling.
- No passwords, secrets, or sensitive user data committed to GitHub.

A `.gitignore` file should exclude local configuration secrets and unnecessary generated files.

## 16. Testing Plan

Each member must test their assigned module for valid and invalid inputs, database integrity, authorization, and error handling.

**End-to-end workflow**

Client creates project → Freelancer submits proposal → Client accepts proposal → Assignment is created → Freelancer updates progress → Payment is recorded → Assignment is completed → Reviews are submitted → Management reports are updated.

Testing must also cover database relationships, constraints, triggers, functions, views, and stored procedures.

Test cases, expected results, actual results, and relevant screenshots should be maintained in `tests/`.

## 17. Report Structure

| Section | Required Content |
|---|---|
| Section 1 | Introduction, ER/EER diagram, assumptions, relational mapping, 3NF normalization and data dictionary |
| Section 2 | SQL table creation, constraints, database diagram and meaningful sample records |
| Section 3 | SQL triggers, functions, views and stored procedures with execution evidence |
| Section 4 | Critical evaluation, strengths, limitations, future improvements and complete DDL/DML SQL listing |

Where applicable, the report should demonstrate at least 10 meaningful records per table.

**Additional report coordination**

| Member | Responsibility |
|---|---|
| 1 | Introduction and assumptions |
| 2 | ERD and relational mapping compilation |
| 3 | Normalization and data dictionary compilation |
| 4 | SQL evidence compilation |
| 5 | Evaluation and future improvements |
| 6 | Formatting, references and submission verification |

All members must document their individual contributions.

## 18. Presentation Recording

The team must prepare a 15-minute recorded presentation in which all six members explain their contributions while showing their faces.

Suggested presentation allocation:

| Member | Topic |
|---|---|
| 1 | Introduction and Freelancer Management |
| 2 | Database Design and Client/Project Management |
| 3 | Proposals and Assignments |
| 4 | Payments, Reviews and SQL |
| 5 | Services and Administration |
| 6 | Reporting, Analytics and Conclusion |

Suggested speaking time is approximately 2 minutes and 30 seconds per member.

The recording must be uploaded to an accessible cloud drive, with the link included in the report.

## 19. Submission Deliverables

The final submission must include:

- Coursework report covering Sections 1–4.
- ER/EER diagrams, relational mapping, normalization and data dictionary.
- SQL implementation, constraints and advanced SQL evidence.
- Complete source code and database scripts.
- Public GitHub repository link.
- Functional and tested web application.
- Sample database records and screenshots.
- Complete DDL/DML SQL listing.
- Fifteen-minute recorded presentation with all members participating.
- Completed and signed Generative AI Declaration.

## 20. Generative AI Use

Generative AI may support permitted project planning, architecture guidance, code explanations, debugging support, testing guidance, and documentation refinement.

Students remain responsible for understanding, writing, testing, and explaining their submitted work.

All AI usage must follow university guidelines and be declared in the required Generative AI Declaration.

## 21. Development Status and Remaining Decisions

**Completed initial setup**
- Public GitHub repository created.
- Main development branches created.
- Shared UI and SQL branches created.
- Initial folder structure committed.
- Initial SQL placeholder files created.
- Repository collaborators invited.
- Shared foundation merged into the working branches.

**Pending development**
- Final approval of database entities and relationships.
- Confirmation of database schema and data dictionary.
- Agreement on PHP and MariaDB versions.
- Finalization of detailed individual daily tasks.
- Development of all six modules.
- Advanced SQL implementation.
- Integration and testing.
- Final report and presentation.

The system is not yet complete. Planned features should not be described as implemented until they have been developed and tested.

## 22. Timeline and Submission Deadline

| Milestone | Date |
|---|---|
| Proposed development period | 23 November – 7 December 2026 |
| Final testing and preparation | 8–9 December 2026 |
| Official coursework deadline | 10 December 2026, 4:00 PM Sri Lanka time |

The development dates are the proposed team schedule. The coursework submission deadline is the official deadline.

## 23. Team Information

| Member name       | GitHub Username            |   Plymouth ID     | Assigned Module              |
|---                |---                         |---                |---                           |
| RPMA Kularathna   | malinduadeesh              |   27108932        | Freelancer Management        |
| RPD Rajapaksha    | dahamrajapakshalk-creator  |   27108961        | Client & Project Management  |
| DGKS Hanwella     | kaveethsathsindu123-source |   27107650        | Proposals & Assignments      |
| BLK Harana        | KomulHarana9               |   10968170        | Payments & Reviews           |
| PMSAB Kandegedara | Shaluka2007215             |   27108922        | AI Services & Administration |
| Kgss thathmira    | thathmirakgss              |   27109074        | Reporting & Analytics        |


---

**Project Summary**

The AI Projects & Services Freelancing Platform is a collaborative six-member database-driven web application developed for PUSL2019 Information Management & Retrieval. The project demonstrates relational database design, normalization, advanced SQL, web application development, version control, integration, and testing through a structured 15-day development workflow.
