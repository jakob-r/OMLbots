# Download OML DB snapshot

dest.file = "omlsnapshot.sql.gz"
db.user = "root"
db.name = "oml"
download.file("https://www.openml.org/downloads/ExpDB_SNAPSHOT.sql.gz", destfile = dest.file, quiet = FALSE)
system(sprintf("zcat %s | mysql -u '%s' -p %s", normalizePath(dest.file), db.user, db.name), wait = TRUE)
