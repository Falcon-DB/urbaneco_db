CREATE TABLE IF NOT EXISTS trainings (
training_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
topic VARCHAR(100) NOT NULL,
trainer_name VARCHAR(100),
scheduled_at TIMESTAMP NOT NULL,
location VARCHAR(100),
capacity INT CHECK (capacity > 0),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS training_enrollments (
id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
artisan_id UUID NOT NULL REFERENCES artisans(artisan_id),
training_id UUID NOT NULL REFERENCES trainings(training_id),
completed BOOLEAN DEFAULT FALSE,
certification_granted BOOLEAN DEFAULT FALSE,
feedback TEXT,
enrolled_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_training_enrollment_artisan ON training_enrollments(artisan_id);-- 🎓 Artisan Training Sessions

CREATE TABLE IF NOT EXISTS trainings (
    training_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    topic VARCHAR(100) NOT NULL,
    trainer_name VARCHAR(100),
    scheduled_at TIMESTAMP NOT NULL,
    location VARCHAR(100),
    capacity INT CHECK (capacity > 0),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 📘 Artisan-Session Mapping with Completion Status

CREATE TABLE IF NOT EXISTS training_enrollments (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    artisan_id UUID NOT NULL REFERENCES artisans(artisan_id),
    training_id UUID NOT NULL REFERENCES trainings(training_id),
    completed BOOLEAN DEFAULT FALSE,
    certification_granted BOOLEAN DEFAULT FALSE,
    feedback TEXT,
    enrolled_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 🔍 Indexes
CREATE INDEX idx_training_enrollment_artisan ON training_enrollments(artisan_id);
