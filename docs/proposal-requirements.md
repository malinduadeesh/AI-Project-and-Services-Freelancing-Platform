# Proposal and Assignment Module – Requirements

## 1. Introduction

The Proposal and Assignment module allows freelancers to submit proposals for projects posted by clients. Clients can review the proposals and select suitable freelancers. When a proposal is accepted, the system creates an assignment to track the selected freelancer's work.

## 2. Functional Requirements

### Freelancer Requirements

- FR01: Freelancers can view available projects.
- FR02: Freelancers can view project descriptions and requirements.
- FR03: Freelancers can submit proposals for projects.
- FR04: Freelancers can enter their proposed price.
- FR05: Freelancers can provide a description explaining their proposal.
- FR06: Freelancers can view their submitted proposals.
- FR07: Freelancers can check the status of their proposals.
- FR08: Freelancers can view their accepted project assignments.

### Client Requirements

- FR09: Clients can view proposals submitted for their projects.
- FR10: Clients can view proposal details, including the freelancer's information, proposed price and description.
- FR11: Clients can accept proposals.
- FR12: Clients can reject proposals.
- FR13: Clients can view assignments created for their projects.

### System Requirements

- FR14: The system stores submitted proposals in the database.
- FR15: The system updates proposal status when a client accepts or rejects a proposal.
- FR16: The system creates an assignment when a proposal is accepted.
- FR17: The system allows multiple freelancers to be accepted for the same project.
- FR18: The system stores assignment information so that clients and freelancers can track assignments.

## 3. Proposal Statuses

The proposal will have three possible statuses:

- Pending – The client has not made a decision.
- Accepted – The client has selected the freelancer.
- Rejected – The client has declined the proposal.

## 4. Business Rules

- BR01: A proposal must belong to an existing project.
- BR02: A proposal must be submitted by an existing freelancer.
- BR03: Only the client who owns a project can accept or reject its proposals.
- BR04: A proposal can be accepted or rejected by the client.
- BR05: An accepted proposal creates an assignment.
- BR06: One project can have multiple accepted proposals and multiple freelancers.
- BR07: A freelancer cannot submit more than one proposal for the same project.

## 5. Assumptions and Design Decisions

- A proposal includes a proposed price and a description.
- New proposals have the Pending status.
- The system creates an assignment after a proposal is accepted.
- Multiple freelancers can work on the same project if the client accepts multiple proposals.
- A freelancer can check the progress of their assignments.

These are design decisions for the project where the lecturer's brief does not specify the exact behaviour.

## 6. Expected Outcome

The module will provide a way for freelancers to submit proposals, clients to select suitable freelancers, and both parties to view and track accepted project assignments.
