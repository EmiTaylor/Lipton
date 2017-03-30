<h2><?php echo $title; ?></h2>

<?php echo validation_errors(); ?>


<?php if(!isset($book) ){
    $book = array( 'titre' => "" , 'auteur' => "" )  ; }
?>

<?php echo form_open('Blackbooks/create'); ?>
<table>
    <tr>
        <td><label for="titre">Titre du livre</label></td>
        <td><input type="input" value="<?php echo $book['titre']; ?>" name="titre" size="50" /></td>
    </tr>
    <tr>
        <td><label for="auteur">Auteur</label></td>
        <td><input type="input" value="<?php echo $book['auteur']; ?>"name="auteur" size="50" /></td>
    </tr>
    <tr>


    </tr>

    <tr>
        <td></td>
        <td><input type="submit" name="submit" value="Créer un nouveau livre" /></td>
    </tr>
</table>
</form>
