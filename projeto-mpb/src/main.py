import psycopg2

def connect():
    conn = psycopg2.connect(
        host='localhost',
        database='mpb_database',
        user='postgres',
        password='6850'
    )
    return conn

def fetch_all_artists():
    conn = connect()
    cur = conn.cursor()
    cur.execute("SELECT * FROM artistas;")
    artists = cur.fetchall()
    cur.close()
    conn.close()
    return artists

def fetch_all_songs():
    conn = connect()
    cur = conn.cursor()
    cur.execute("SELECT * FROM musica ORDER BY artista_id")
    songs = cur.fetchall()
    cur.close()
    conn.close()
    return songs

if __name__ == "__main__":
    artists = fetch_all_artists()
    songs = fetch_all_songs()

    print("Lista de Artistas:")
    for artist in artists:
        print(artist)

    print("\nLista de Músicas:")
    for song in songs:
        print(song)
