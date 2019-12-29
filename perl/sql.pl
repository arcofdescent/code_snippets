
my $sql = '';
eval {
    my $sth = $dbh->prepare($sql);
    $sth->execute();
    while (my @row = $sth->fetchrow_array) {
        # column 1 is $row[0]
        # column 2 is $row[1]
    }
    $sth->finish();
};
if ($@) {
    die "Could not execute SQL: $sql";
}

