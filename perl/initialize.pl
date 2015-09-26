#!/usr/bin/perl

use Isucon5::Web;

my $db = Isucon5::Web->db;

my $query = 'SELECT id, user_id FROM entries';
my $entry_id_map = +{};
for my $entry (@{$db->select_all($query)}) {
	$entry_id_map->{$entry->{id}} = $entry->{user_id};
}

my $query = <<SQL;
UPDATE comments
SET owner_id = ?
WHERE entry_id = ?
SQL

for my $entry_id (keys %$entry_id_map) {
	print "$entry_id\n";
	$db->query($query, $entry_id_map->{$entry_id}, $entry_id);
}



1;
