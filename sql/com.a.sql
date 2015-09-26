
-- コメントから直接コメント先のentryのuser_id絞れるように
ALTER TABLE comments ADD owner_id int(11) NOT NULL AFTER entry_id;
ALTER TABLE comments ADD INDEX _i1(owner_id);
