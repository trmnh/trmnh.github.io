<?php
    require_once('settings.php');

    // Redirection vers la page de login si l'utilisateur n'est pas connecté
    if (!$_SESSION['IDENTIFY']) {
        header('Location: login.php');
    }
    
    $msg = null;
    $result = null;
    $tinyMCE = true;
    $article = null;

    if(!is_object($conn)){
        $msg = getMessage($conn, 'error');
    }else{

        // Vous devez vérifier si on reçoit bien un id en paramètre dans l'URL
        // Enlevez le l et insérez votre test à la place
        if (isset($_GET['id']) && !empty($_GET['id'])) {
            $id = $_GET['id'];
        
          
            // Vous devez le stocker dans une variable et appeler la fonction qui va chercher l'article en DB 
            // et stocker le résultat dans une variable nommée $article
            $article = getArticleByIDDB($conn, $id);

            if (!$article) {
                header('Location: manager.php');
            }
           
        } else {
            // Si on ne reçoit pas d'id en paramètre dans l'URL, on redirige vers la page de gestion
            header('Location: manager.php');
    }}

    // Remarque : pour l'instant la checkbox n'est pas affichée vous n'avez pas encore initialisé la variable $article 
    // avec les données de l'article

    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['form']) && $_POST['form'] == 'update') {
        $status = updateArticleDB($conn, $_POST);
    
        // Traitements des status de retour des fonctions et affichage des messages correspondants
        if ($status) {
            $msg = getMessage('Action effectuée avec succès', 'success');
            // Vous pouvez rediriger l'utilisateur vers la page de gestion ou une autre page si nécessaire
            // header('Location: manager.php');
        } else {
            $msg = getMessage('Erreur lors de l\'action', 'error');
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <?php displayHeadSection('Editer un article'); ?>
</head>
<body>
    <div class="container">
        <div id="header-logo">
            <h1><?php echo APP_NAME; ?></h1>
        </div>
        <div id="main-menu">
            <?php displayNavigation(); ?>
        </div>
        <h2 class="title">Modifier un article<h2>
        <div id="content-edit">

            <form action="manager.php" method="post">     
                <input type="hidden" name="id" value="<?php echo $article['id'];  ?>">               
                <div class="form-ctrl">
                    <label for="title" class="form-ctrl">Titre</label>
                    <input type="text" class="form-ctrl" id="title" name="title" value="<?php echo $article['title']; ?>" required>
                </div>
                <div class="form-ctrl">                                          
                    <label for="published_article" class="form-ctrl">Status de l'article <small>(publication)</small></label> 
                    <?php if(isset($article['active'])) displayFormRadioBtnArticlePublished($article['active'], 'EDIT'); ?>                  
                </div>   
                <div class="form-ctrl">
                    <label for="content" class="form-ctrl">Contenu</label>
                    <textarea class="" id="content" name="content" rows="5"><?php echo $article['content']; ?></textarea>
                </div>

                <input type="hidden" id="form" name="form" value="update">
                <button type="submit" class="btn-classic">Modifier</button>
            </form> 
        </div>  
        <footer>
            <?php displayFooter(); ?>
        </footer>             
    </div>  
    <?php displayJSSection($tinyMCE); ?>    
</body>
</html>