## 📊 Entity-Relationship Diagram (ERD)

The diagram below represents the core entities and relationships in the Airbnb Clone database. It was designed to meet normalization and scalability standards, ensuring efficient and relational data integrity.

![Airbnb ERD](airbnb_erd.png)

### 🧩 Entities & Relationships

| Entity    | Attributes |
|-----------|------------|
| **User**  | `user_id` (PK), `first_name`, `last_name`, `email` (unique), `password_hash`, `phone_number`, `role`, `created_at` |
| **Property** | `property_id` (PK), `host_id` (FK → User), `name`, `description`, `location`, `pricepernight`, `created_at`, `updated_at` |
| **Booking**  | `booking_id` (PK), `property_id` (FK → Property), `user_id` (FK → User), `start_date`, `end_date`, `total_price`, `status`, `created_at` |
| **Payment**  | `payment_id` (PK), `booking_id` (FK → Booking), `amount`, `payment_date`, `payment_method` |
| **Review**   | `review_id` (PK), `property_id` (FK → Property), `user_id` (FK → User), `rating`, `comment`, `created_at` |
| **Message**  | `message_id` (PK), `sender_id` (FK → User), `recipient_id` (FK → User), `message_body`, `sent_at` |

---

### 🔗 Relationships Summary

- One **User** can:
  - List many **Properties**
  - Book many **Bookings**
  - Leave many **Reviews**
  - Send and receive many **Messages**

- One **Property** can:
  - Have many **Bookings**
  - Receive many **Reviews**

- One **Booking**:
  - Belongs to one **Property**
  - Is made by one **User**
  - Has one **Payment**

- One **Review**:
  - Is linked to one **User** and one **Property**

- One **Message**:
  - Has one **sender** and one **recipient** (both Users)

---


