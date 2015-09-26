
-- 足跡
ALTER TABLE footprints ADD INDEX _i1(user_id, owner_id, created_at);

-- ユーザー関連INDEX
ALTER TABLE users ADD INDEX _i1(account_name);

-- コメントから直接コメント先のentryのuser_id絞れるように
ALTER TABLE comments ADD owner_id int(11) NOT NULL AFTER entry_id;
ALTER TABLE comments ADD INDEX _i1(owner_id);
