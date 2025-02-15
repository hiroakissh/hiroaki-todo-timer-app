```mermaid
erDiagram
    USER ||--o{ TASK : has
    TASK ||--o{ TIMELOG : has
    TASK ||--o{ ATTACHMENT : has
    TASK ||--o{ TASKLOG : has
    USER ||--o{ GROUP : creates
    GROUP ||--o{ TASK : contains

    USER {
        string id PK
        string name
        string email
    }

    TASK {
        string id PK
        string user_id FK
        string title
        string description
        date start_date
        date due_date
        string priority
        string group_id FK
        string status
    }

    TIMELOG {
        string id PK
        string task_id FK
        datetime start_time
        datetime end_time
        int duration_minutes
    }

    ATTACHMENT {
        string id PK
        string task_id FK
        string file_url
    }

    TASKLOG {
        string id PK
        string task_id FK
        datetime timestamp
        string action
        string notes
    }

    GROUP {
        string id PK
        string user_id FK
        string name
    }


````
