<h2><?php echo $title; ?></h2>

<?php foreach ($books as $books_item): ?>

    <h3><?php echo $books_item['titre']; ?></h3>
    <div class="main">
        <?php echo $books_item['categorie'].$books_item['titre']; ?>
    </div>
    <p><a href="<?php echo site_url('books/'.$books_item['id']); ?>">Voir le livre !</a></p>
<?php endforeach ?>
