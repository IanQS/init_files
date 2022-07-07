# Initialize

Lift from [Arch docs](https://wiki.archlinux.org/title/PostgreSQL)

```
sudo -iu postgres
```

then

```
initdb --locale=en_US.UTF-8 --encoding=UTF8 -D /var/lib/postgres/data --data-checksums
```

# Enable

```
sudo systemctl enable postgresql
```

# Create users

Log in to super user again

```
sudo -iu postgres
createuser --interactive
```

then for the new name of the role use `iq` and add as superuser. Now add in

```
createdb iq
```

# Plugins

Modify `/var/lib/postgres/data/postgresql.conf` specifically adding the plugins to 

```
shared_preload_libraries = 'X'
```


