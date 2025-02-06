import sqlite3


def connect_db(my_db_name):
    """
    connecting to a database,
    creating connection and curser veriables
    :param my_db_name:
    :return:
    """
    my_conn = sqlite3.connect(my_db_name)  # creates a connector
    my_conn.row_factory = sqlite3.Row  # allow me to use column name
    my_cursor = my_conn.cursor()  # creates a cursor
    return my_conn, my_cursor


def query(my_curser, my_conn, my_query):
    """
    executing a query using the curser and commiting it
    :param my_curser:
    :param my_conn:
    :param my_query:
    :return:
    """
    my_curser.execute(my_query)
    my_conn.commit()


def read_query(my_cursor, query, type):
    """
    return values from the database
    :param my_cursor:
    :param query:
    :param type:
    :return:
    """
    my_cursor.execute(query)
    rows = my_cursor.fetchall()
    if type == list:
        result_list = [list(row) for row in rows]
        return result_list
    if type == dict:
        result_dict = [dict(row) for row in rows]
        return result_dict
    if type == tuple:
        result_tuple = [tuple(row) for row in rows]
        return result_tuple


def update_query(my_cursor, my_conn, query, parameter):
    my_cursor.execute(query, parameter)
    my_conn.commit()
