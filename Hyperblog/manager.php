<?php
    require_once('settings.php');

    // Redirection vers la page de login si l'utilisateur n'est pas connecté
    if (!$_SESSION['IDENTIFY']) {
        header('Location: login.php');
    }
    
    $msg = null;
    $result = null;
    $execute = false;
    $status = null;

    // On vérifie l'objet de connexion $conn
    if(!is_object($conn)){            
        $msg = getMessage($conn, 'error');
    }else{

        //Suite de if elsif
        // Vérifie les données envoyées par le formulaire de la page edit.php et met à jour un article
        if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['form']) && $_POST['form'] == 'update') {
            $status = updateArticleDB($conn, $_POST);
        }

        // Vérifie les données envoyées la page manager.php et supprime l'article       
        // Vérifie les données envoyées la page manager.php et supprime l'article       
        if ($_SERVER["REQUEST_METHOD"] == "GET" && isset($_GET['form']) && $_GET['form'] == 'delete') {
            $status = deleteArticleDB($conn, $_GET['id']);
        }

        // Vérifie les données envoyées par le formulaire de la page add.php et ajoute un article    
        if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['form']) && $_POST['form'] == 'add') {
            // Appel de la fonction pour ajouter un nouvel article
            $status = addArticleDB($conn, $_POST);
        }

             
        // Traitements des status de retour des fonctions et affichage des messages correspondants
        if($status) {
            $msg = getMessage('Action effectuée avec succès', 'success');
            header('refresh:2;url=manager.php');
        }elseif($status === false) {
            $msg = getMessage('Erreur lors de la l\'action', 'error');
            header('refresh:2;url=manager.php');
        }

        // Récupérer tous les articles de la table articles et les stocker dans un tableau nommé $result
        $result = getAllArticlesDB($conn);
        // On vérifie le retour de la fonction : si c'est un tableau, on continue, sinon on affiche le message d'erreur
        (isset($result) && is_array($result) && !empty($result))? $execute = true : $msg = getMessage('Il n\'y a pas d\'article à afficher actuellement', 'error');
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <?php displayHeadSection('Gestion des articles'); ?>
</head>
<body>
    <div class="container">
        <div id="header-logo">
            <h1><?php echo APP_NAME; ?></h1>
        </div>
        <div id="main-menu">
            <?php displayNavigation(); ?>
        </div>
        <h2 class="title" >Gérer les articles</h2>
        <div id="message">
            <?php if(isset($msg)) echo $msg; ?>
        </div>
        <div id="content">
        <?php                  
                // Peut-on exécuter la liste des articles pour le manager             
                if($execute){
                    // Affiche la liste des articles pour le manager
                    foreach ($result as $article) {
                        $publication = ($article['active']) ? '<span class="circle-published" title="Article publié"></span>' : '<span class="circle-not-published" title="Article non publié"></span>' 
                        ?>
                        <div class="article">
                      
                            <h2><?php echo $publication . ' ' . $article['title']; ?></h2>
                            <div class="menu">
                                <a href="edit.php?id=<?php echo $article['id']; ?>">Modifier</a>
                                <a href="article.php?id=<?php echo $article['id']; ?>">Lire</a>
                                <a href="manager.php?form=delete&id=<?php echo $article['id']; ?>" class="btn-danger">Supprimer</a>
                            
                        </div>
                    </div>
                        <hr>
                        <?php
                    }
                } else {
                    // Affiche un message si aucun article n'est disponible
                    echo '<p>Aucun article à afficher actuellement.</p>';
                }
            ?>
        </div>  
        <footer>
            <?php displayFooter(); ?>
        </footer>             
    </div>    
</body>
</html>