
my $dbh;
my $dsn = "DBI:mysql:database=$db_name;host=$db_host";

eval {
    $dbh = DBI->connect($dsn, $db_user, $db_pass, 
                { PrintError => 0, RaiseError => 1, AutoCommit => 0}
    );
};
if ($@) {
    die "$@\n";
}

