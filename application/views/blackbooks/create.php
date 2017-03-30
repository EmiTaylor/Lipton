<?php echo validation_errors(); ?>


<?php if(!isset($book) ){
    $book = array( 'titre' => "" , 'auteur' => "" )  ; }
?>
<?php echo form_open('Blackbooks/create'); ?>
<br><br>
    <div id="create">
        <br><br><br>
            <table>
                <tr>
                    <td class="small"><label for="titre">Titre du livre</label></td>
                    <td><input type="input" value="<?php echo $book['titre']; ?>" name="titre"/></td>
                </tr>
                <br>
                <tr>
                    <td class="big"><label for="auteur">Auteur</label></td>
                    <td><input type="input" value="<?php echo $book['auteur']; ?>"name="auteur"/></td>
                </tr>
                
                <tr>
                    <td class="btn"><input type="submit" name="submit" value="Créer un nouveau livre" /></td>
                </tr>
            </table>
</form>
</div>
