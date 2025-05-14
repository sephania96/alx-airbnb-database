# 🧠 Database Normalization Report

## Objective

To ensure the Airbnb Clone database schema adheres to the Third Normal Form (3NF), eliminating redundancy and improving integrity.

---

## ✅ First Normal Form (1NF)

- All fields contain **atomic values** (no lists or nested structures).
- Each record is **unique** and identifiable by a **primary key**.

➡️ ✅ All entities meet 1NF.

---

## ✅ Second Normal Form (2NF)

- All fields are **fully dependent on the entire primary key**.
- No **partial dependencies** (not applicable as most tables use single-field primary keys).

➡️ ✅ All entities meet 2NF.

---

## ✅ Third Normal Form (3NF)

- No **transitive dependencies** (fields depending on non-PK fields).
- All non-key attributes are **dependent only on the primary key**.

| Table     | 3NF Violations? | Notes |
|-----------|------------------|-------|
| User      | ❌ None          | Clean attributes |
| Property  | ❌ None          | All fields about the property |
| Booking   | ❌ None          | `total_price` acceptable for history |
| Payment   | ❌ None          | One booking → one payment |
| Review    | ❌ None          | No transitive issues |
| Message   | ❌ None          | Sender/receiver only |

---

## ✅ Summary

- The Airbnb Clone database schema **fully conforms to 3NF**.
- No changes required at this time.
- Data structure is optimal for querying, reporting, and scaling.

