<?php if(isset($success)){
        echo "Le livre à été ajouté avec succès !";
        } ?>

<?php foreach($books as $books_item): ?>

    <div class="main">
        <?php echo $books_item['titre'].$books_item['categorie']; ?>
    </div><br>
    <div class="main">
        <?php echo $books_item['auteur'].$books_item['categorie']; ?>
    </div><br>

    <p><a href="<?php echo site_url('blackbooks/'.$books_item['id']); ?>">Voir le livre</a></p>
    <p><a href="<?php echo site_url('blackbooks/update/'.$books_item['id']); ?>">Modifier le livre</a></p>
    <p><a href="<?php echo site_url('blackbooks/delete/'.$books_item['id']); ?>">Supprimer le livre</a></p>

<?php endforeach; ?>

<p><a href="<?php echo site_url('blackbooks/create'); ?>">Ajouter</a></p>
