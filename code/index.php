<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>McDonald's Kiosk</title>
    <link rel="stylesheet" href="./assets/css/style.css">
</head>
<body>
    <div class="container">
        <aside class="sidebar">
            <h2>Categories</h2>
            <ul>
                <?php
                include 'dbconn.php';

                $sql = "SELECT DISTINCT item_category FROM menu";
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    while($row = $result->fetch_assoc()) {
                        $category = htmlspecialchars($row['item_category']);
                        echo "<li><a href='#' class='category-link' data-category='$category'>$category</a></li>";
                    }
                } else {
                    echo "<li>No categories found</li>";
                }
                ?>
            </ul>
        </aside>
        <main class="main-content">
            <?php
            $sql = "SELECT item_name, item_price, item_image, item_category FROM menu";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    $imagePath = 'assets/images/' . $row["item_category"] . '/' . $row["item_image"];
                    $itemCategory = htmlspecialchars($row["item_category"]);
                    echo "<div class='menu-item' data-category='$itemCategory'>";
                    echo "<img src='" . htmlspecialchars($imagePath) . "' alt='" . htmlspecialchars($row["item_name"]) . "'>";
                    echo "<h3>" . htmlspecialchars($row["item_name"]) . "</h3>";
                    echo "<p class='price'>$" . number_format($row["item_price"], 2) . "</p>";
                    echo "</div>";
                }
            } else {
                echo "0 results";
            }

            $conn->close();
            ?>
        </main>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const categoryLinks = document.querySelectorAll('.category-link');
            const menuItems = document.querySelectorAll('.menu-item');

            categoryLinks.forEach(link => {
                link.addEventListener('click', function(event) {
                    event.preventDefault();
                    const selectedCategory = this.getAttribute('data-category');

                    menuItems.forEach(item => {
                        if (item.getAttribute('data-category') === selectedCategory || selectedCategory === 'all') {
                            item.style.display = 'block';
                        } else {
                            item.style.display = 'none';
                        }
                    });
                });
            });

            if (categoryLinks.length > 0) {
                categoryLinks[0].click();
            }
        });
    </script>
</body>
</html>
