<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MCU Tier List</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="tier-list" id="tierList">
        <?php
            include 'db.php';

            $sql = "SELECT Movie_id, Image, Name, Place FROM Movie ORDER BY Place ASC";
            $result = mysqli_query($connect, $sql);

            if (mysqli_num_rows($result) > 0) {
                while($row = mysqli_fetch_assoc($result)) {
                    $rankClass = '';
                    if ($row["Place"] == 1) {
                        $rankClass = ' rank-1';
                    } elseif ($row["Place"] == 2) {
                        $rankClass = ' rank-2';
                    } elseif ($row["Place"] == 3) {
                        $rankClass = ' rank-3';
                    }

                    echo '<div class="tier-item' . $rankClass . '" data-id="' . $row["Movie_id"] . '" data-place="' . $row["Place"] . '">';
                    echo '<img src="img/' . $row["Image"] . '" alt="' . $row["Name"] . '">';
                    echo '<h3>' . $row["Name"] . '</h3>';
                    echo '<span class="rank">Место: ' . $row["Place"] . '</span>';
                    echo '</div>';
                }
            } else {
                echo "0 results";
            }

            mysqli_close($connect);
        ?>
    </div>

    <script>
        let firstClicked = null;

        document.querySelectorAll('.tier-item').forEach(item => {
            item.addEventListener('click', () => {
                if (!firstClicked) {
                    firstClicked = item;
                    item.style.borderColor = 'red';
                } else {
                    const secondClicked = item;
                    swapPlaces(firstClicked, secondClicked);
                    firstClicked.style.borderColor = '';
                    firstClicked = null;
                }
            });
        });

        function swapPlaces(item1, item2) {
            const place1 = item1.getAttribute('data-place');
            const place2 = item2.getAttribute('data-place');

            const id1 = item1.getAttribute('data-id');
            const id2 = item2.getAttribute('data-id');

            const xhr = new XMLHttpRequest();
            xhr.open('POST', 'update_place.php', true);
            xhr.setRequestHeader('Content-Type', 'application/json');
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    location.reload();
                }
            };
            xhr.send(JSON.stringify({ id1: id1, place1: place2, id2: id2, place2: place1 }));
        }
    </script>
</body>
</html>
