from app import app

def test_home():
    # On crée un client de test à partir de l'application Flask
    client = app.test_client()
    
    # On effectue une requête GET sur la route racine
    response = client.get('/')
    
    # On vérifie que le statut HTTP est 200
    assert response.status_code == 200
    
    # On vérifie que le texte attendu se trouve dans la réponse
    # Ici, on s'assure que "Bonjour depuis un conteneur" est bien présent dans le contenu
    assert b"Bonjour depuis un conteneur" in response.data