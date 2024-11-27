namespace db;

entity Books {
    key ID       : UUID;
    title        : String(100);
    stock        : Integer;
    author       : Association to Authors;
}

entity Authors {
    key ID       : UUID;
    name         : String(100);
    nationality  : String(50);
}
