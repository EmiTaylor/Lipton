<?php if(isset($success)){
        echo "Le livre à été ajouté avec succès !";
        } ?>
<?php foreach($books as $books_item): ?>
<div id="books">
    <div class="main">
        <br><br><br><br>
        <?php echo $books_item['titre'].$books_item['categorie']; ?>
        <?php echo $books_item['auteur'].$books_item['categorie']; ?>
    </div>
    <br><br><br><br><br><br>
    <p><a href="<?php echo site_url('blackbooks/'.$books_item['id']); ?>">Voir</a></p>
    <p><a href="<?php echo site_url('blackbooks/update/'.$books_item['id']); ?>">Modifier</a></p>
    <p><a href="<?php echo site_url('blackbooks/delete/'.$books_item['id']); ?>">Supprimer</a></p>
</div>
<?php endforeach; ?>
<br><br><br>
<h2><a href="<?php echo site_url('blackbooks/create'); ?>">Ajouter un nouveau livre</a></h2>
<br><br>
