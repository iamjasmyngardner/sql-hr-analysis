## Purpose

This repository is a tiny SQL practice workspace containing a SQLite database and a single schema file. These instructions give an AI coding agent the minimal, high-value context needed to be productive: what the project is, where to look, and concrete commands/examples to run or modify the data model.

## Big picture

- Single-component repo: a SQLite database `practice.db` and a schema file `queries.sql` that defines one table: `employees`.
- The data model is intentionally small and self-contained. Work here focuses on writing and validating SQL against a local SQLite file rather than a multi-service architecture.

## Key files

- `queries.sql` — canonical schema definitions (CREATE TABLE statements). Example: the `employees` table with columns `id, first_name, last_name, department, salary, hire_date`.
- `practice.db` — the SQLite database file you can open and query directly.

## Useful commands / dev workflows

- Open the DB in the sqlite3 CLI (macOS zsh):

```bash
sqlite3 practice.db
.tables
PRAGMA table_info(employees);
SELECT * FROM employees LIMIT 10;
```

- Useful one-off queries to reference patterns from this repo:

```sql
-- average salary per department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- hires after 2020-01-01 (hire_date stored as TEXT ISO YYYY-MM-DD)
SELECT * FROM employees WHERE hire_date > '2020-01-01';
```

- Recommended GUI options for quick inspection: "DB Browser for SQLite" or the VS Code "SQLite" extension. Both can open `practice.db` (no network credentials required).

## Schema / conventions discovered here

- Dates: `hire_date` is stored as TEXT in ISO format (`YYYY-MM-DD`). Treat it as a string for SQLite comparisons or convert with date functions if needed.
- Numeric values: `salary` is INTEGER. Expect whole numbers — no currency formatting is present.
- Primary key: `id` is `INTEGER PRIMARY KEY` (SQLite rowid-compatible).

## Editing the schema

- There is no migration framework present. To change the schema:
  1. Edit `queries.sql` to add/modify DDL.
  2. Recreate a new `practice.db` from `queries.sql` (or apply changes manually using ALTER statements).

Example to recreate DB from `queries.sql`:

```bash
mv practice.db practice.db.bak   # keep a backup
sqlite3 practice.db < queries.sql
```

## What NOT to assume

- There are no application servers, tests, CI configs, or external integrations in this repository — it's a local SQL practice sandbox.
- No conventions for branching, commit messages, or migrations exist in-repo; follow your org's standard if one exists.

## Quick tasks an AI agent can do right away

- Add example dataset insertion statements to `queries.sql` to make the schema runnable for demos.
- Provide sample queries (analytics or validation) and short explanations of their results.
- Add a small README or a `scripts/` folder with helpers (e.g., `load_sample_data.sql`) if the user asks — but propose changes before creating them.

## Where to look for follow-up context

- If the user wants application-level behavior, ask for the target app repo — this project contains only schema and DB.

---

If any section is unclear or you'd like examples tailored to a particular query or test harness, tell me which areas to expand and I'll update this file.
