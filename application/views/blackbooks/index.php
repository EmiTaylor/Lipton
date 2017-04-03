<?php if(isset($success)){
        echo "Le livre à été ajouté avec succès !";
        } ?>
<?php foreach($books as $books_item): ?>

<div class="books">
    <div class="main">
        <?php echo $books_item['titre'].$books_item['categorie']; ?>
        <?php echo $books_item['auteur'].$books_item['categorie']; ?><br><br><br>
        <?php if (!empty($books_item['cover'])): ?>
            <img src="/<?= $books_item['cover']; ?>">
        <?php endif; ?>
    </div>
    <div class="liens">
        <p><a href="<?php echo site_url('blackbooks/'.$books_item['id']); ?>">Voir</a></p>
        <p><a href="<?php echo site_url('blackbooks/update/'.$books_item['id']); ?>">Modifier</a></p>
        <p><a href="<?php echo site_url('blackbooks/delete/'.$books_item['id']); ?>">Supprimer</a></p>
    </div>
</div>
<?php endforeach; ?>
<div class="ajout">
    <h2><a class="url" href="<?php echo site_url('blackbooks/create'); ?>">Ajouter un nouveau livre</a></h2>
</div>
<br><br>
