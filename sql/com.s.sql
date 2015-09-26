
-- DROP TABLE IF EXISTS comments;
CREATE TABLE IF NOT EXISTS comments (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `entry_id` int NOT NULL,
  `user_id` int NOT NULL,
  `comment` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `entry_id` (`entry_id`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

