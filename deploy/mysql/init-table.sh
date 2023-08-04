mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "CREATE TABLE IF NOT EXISTS ${MYSQL_DATABASE}.user (
  id INT NOT NULL AUTO_INCREMENT,
  email VARCHAR(32) NOT NULL,
  password VARCHAR(16) NOT NULL,
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  PRIMARY KEY (id)
);"

mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "CREATE TABLE IF NOT EXISTS ${MYSQL_DATABASE}.post (
  id INT NOT NULL AUTO_INCREMENT,
  author_id INT NOT NULL,
  title VARCHAR(32) NOT NULL,
  content TEXT,
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  PRIMARY KEY (id),
  FOREIGN KEY (author_id) REFERENCES ${MYSQL_DATABASE}.user(id)
);"

