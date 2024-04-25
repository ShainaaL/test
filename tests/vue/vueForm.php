<!DOCTYPE html5>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>SingItLoud</title>
    <style type="text/csss">
    @import url("css/accueil.css");
    @import url("css/stylef.css");
    </style>
</head>

<body>
<main><h3>Form</h3>
        <form>
              <label for="name">Pseudo:</label>
              <input type="text" id="name" name="name" autocomplete="fullname"><br>
      
              <label for="email">Email :</label>
              <input type="email" id="email" name="email"  autocomplete="mail" required><br>
      
              <label for="drama">Artiste favori:</label>
              <input type="text" id="artist" name="artiste" required><br>
      
              <label for="genre">Genre:</label>
              <select id="genre" name="genre">
                  <option value="rap">Rap</option>
                  <option value="rock">Rock</option>
                  <option value="Hipop">Hip-pop</option>
                  <option value="rnb">Rnb</option>
                  <option value="kpop">Kpop</option>
                  <option value="Classique">Classique</option>
              </select>
      <br><br><br><br>
                    <textarea name="message" required></textarea><br>
                    <input type="submit">
          </form>
          <?php
    if (isset($_POST['message'])) {
        $retour = mail('shainalamapro@gmail.com', 'Envoi depuis la page Contact', $_POST['message'], 'From: test@bts.sio' . "\r\n" . 'Reply-to: ' . $_POST['email']);
        if($retour)
            echo '<p>Votre message a bien été envoyé.</p>';
    }
    ?>
</main>
</body>
</html>