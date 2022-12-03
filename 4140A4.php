<!-- 
    TEMPLATE FROM A3:
    - URL: https://github.com/dishant26201/4140A3
    - Date accessed: 1st December 2022
-->

<!DOCTYPE html>
<html>
  
<body>
    <form method="POST">
        <p>To order multiple parts, separate parts with a comma and a space. Example "Part1, Part2":</p>
        <input type="text" name="name">
        <input type="submit" name="submitPo" value="Submit PO">
    </form>
    <br>
    <form method="POST">
        <p>Click button to display all available parts:</p> 
        <input type="submit" name="listParts"
            class="button" value="List Parts" />
    </form>

    <!-- PHP CODE FOR REST SERVICES/SQL QUERIES FOR ALL THREE FUNCTIONALITITES -->
    <?php
        if (array_key_exists('listParts', $_POST)) {
            listParts();
        }
        else if (array_key_exists('submitPo', $_POST)) {
            submitPo();
        }

        // FUNCTION TO DISPLAY ALL PARTS
        function listParts() {
          $con = mysqli_connect('localhost', 'root', 'root', 'MainDb009');
          $response = array();
          if ($con) {
            $sql1 = "SELECT partNameX009 FROM PartsX009";
            $sql2 = "SELECT partNameY009 FROM PartsY009";
            $result1 = mysqli_query($con, $sql1);
            $result2 = mysqli_query($con, $sql2);
            if ($result1) {
                $x = 0;
                while ($row = mysqli_fetch_assoc($result1)) {
                    $response[$x] = $row['partNameX009'];
                    $x++;
                }
            }
            if ($result2) {
                $y = 10;
                while ($row = mysqli_fetch_assoc($result2)) {
                    if (!in_array($row['partNameY009'], $response)) {
                        $response[$y] = $row['partNameY009'];
                        $y++;
                    }
                }
            }
            echo "<h4>". "List of all Parts:" ."</h4>";
            for ($i = 0; $i < count($response); $i++) {
                echo "<p>". $response[$i] ."</p>";
            }
          }
          else {
            echo "DATABASE CONNECTION FAILED! TRY AGAIN BUDDY.";
          }
        }

        // FUNCTION TO SUBMIT A PO
        function submitPo() {
            $companyXArray = array();
            $companyYArray = array();

            $con = mysqli_connect('localhost', 'root', 'root', 'MainDb009');

            $sql1 = "SELECT * FROM PartsX009";
            $sql2 = "SELECT * FROM PartsY009";
            $result1 = mysqli_query($con, $sql1);
            $result2 = mysqli_query($con, $sql2);

            if ($result1) {
                $x = 0;
                while ($row = mysqli_fetch_assoc($result1)) {
                    $companyXArray[$x]['partNoX009'] = $row['partNoX009'];
                    $companyXArray[$x]['partNameX009'] = $row['partNameX009'];
                    $companyXArray[$x]['currentPriceX009'] = $row['currentPriceX009'];
                    $companyXArray[$x]['qohX009'] = $row['qohX009'];
                    $x++;
                }
            }

            if ($result2) {
                $y = 0;
                while ($row = mysqli_fetch_assoc($result2)) {
                    $companyYArray[$y]['partNoY009'] = $row['partNoY009'];
                    $companyYArray[$y]['partNameY009'] = $row['partNameY009'];
                    $companyYArray[$y]['currentPriceY009'] = $row['currentPriceY009'];
                    $companyYArray[$y]['qohY009'] = $row['qohY009'];
                    $y++;
                }
            }

            $newId = rand(1,1000);
            $insertQuery = "INSERT INTO POsZ009 (poNoZ009, clientCompIDZ009, dateOfPOZ009, statusZ009) 
                            VALUES ($newId, 'B00843017', '2022-11-12', 'Active')";
            $result = mysqli_query($con, $insertQuery);

            $input = $_POST['name'];
            $inputArr = explode (", ", $input);

            $cnt = 0;
            for ($a = 0; $a < count($inputArr); $a++) {
                $currPart = $inputArr[$a];

                $flag = FALSE;
                $price = 1000;
                $qtyInHand = 0;
                $partNo = 0;
                $company = 'null';

                for ($i = 0; $i < count($companyXArray); $i++) {
                    if ($companyXArray[$i]['partNameX009'] == $currPart) {
                        $price = $companyXArray[$i]['currentPriceX009'];
                        $qtyInHand = $companyXArray[$i]['qohX009'];
                        $partNo = $companyXArray[$i]['partNoX009'];
                        $company = 'Company X';
                        $flag = TRUE;
                    }
                }
                for ($j = 0; $j < count($companyYArray); $j++) {
                    if ($companyYArray[$j]['partNameY009'] == $currPart) {
                        if ($companyYArray[$j]['qohY009'] > 0) {
                            if ($companyYArray[$j]['currentPriceY009'] <= $price) {
                                $price = $companyYArray[$j]['currentPriceY009'];
                                $qtyInHand = $companyYArray[$j]['qohY009'];
                                $partNo = $companyYArray[$j]['partNoY009'];
                                $company = 'Company Y';
                                $flag = TRUE;
                            }
                        }
                    }
                }
                if ($flag == TRUE) {
                    $cnt++;
                    $insertLine = "INSERT INTO LinesZ009 (poNoZ009, lineNoZ009, partNoZ009, qtyZ009, priceOrderedZ009, companyOrderedZ009)
                                VALUES ($newId, $cnt, $partNo, 1, $price, '$company')";
                    $resultLine = mysqli_query($con, $insertLine);

                    if ($cnt == count($inputArr)) {
                        echo "<p>". "PO #$newId Submitted Successfully!" ."</p>";
                    }
                }
                else {
                    $deleteQueryLine = "DELETE FROM LinesZ009 WHERE poNoZ009 = $newId";
                    $resultDeleteLine = mysqli_query($con, $deleteQueryLine);

                    $deletePO = "DELETE FROM POsZ009 WHERE poNoZ009 = $newId";
                    $resultDeletePO = mysqli_query($con, $deletePO);
                    echo "<p>". "The PO could not be submitted because $currPart is not available" ."</p>";
                    break;
                }
            }
        }
    ?>
</body>
</html>