DROP TABLE IF EXISTS candidates;
DROP TABLE IF EXISTS parties;

CREATE TABLE parties (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  description TEXT
);

CREATE TABLE candidates (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    industry_connected BOOLEAN NOT NULL,
    party_id INTEGER,
    /*CONSTRAINT FLAGS THE PARTY ID AS A FOREING KEY, AND TELLS
    SQL WHICH TABLE AND FIELD IT REFERENCES. REFERENCES THE ID FIELD 
    IN PARTIES TABLE */
    CONSTRAINT fk_party FOREIGN KEY (party_id) REFERENCES parties(id) ON DELETE SET NULL
);

