from psycopg2 import connect, Error
from contextlib import contextmanager


create_table_users = """
CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(50),
  password VARCHAR(50),
  age NUMERIC CHECK (age > 0 AND age < 150)
);
"""




@contextmanager
def connection():
    conn = None
    try:
        conn = connect(host='balarama.db.elephantsql.com', dbname='vnnfsjws', user='vnnfsjws',
                          password='9XvH8uQobMHimAZGrxX_whlt0yOaLlyu')
        yield conn
        conn.commit()
    except Error as error:
        print(error)
        conn.rollback()
    finally:
        if conn is not None:
            conn.close()

if __name__ == '__main__':
    with connection() as conn:
        c = conn.cursor()
        c.execute(create_table_users)
        c.close()