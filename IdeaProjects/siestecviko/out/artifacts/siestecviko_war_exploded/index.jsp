<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 04.04.2018
  Time: 8:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Index</title>
    <script
            src="https://code.jquery.com/jquery-3.3.1.min.js"
            integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css" type="text/css">
  </head>
  <body>
  <div class="container">
      <div class="form-group">
        <label for="meno">Meno</label>
        <input type="text" class="form-control" id="meno" name="meno" placeholder="Zadajte meno">

      </div>
      <div class="form-group">
        <label for="cislo">Rodné číslo</label>
        <input type="text" class="form-control" id="cislo" name="cislo" placeholder="Zadajte rodné číslo">
      </div>

      <div class="form-group">
        <label for="vek">Vek</label>
        <input type="number" class="form-control" id="vek" name="vek" placeholder="Zadajte vek">
      </div>
    <div class="form-group">
      <label for="sel1">Vyberte pohlavie</label>
      <select class="form-control" id="sel1">
        <option>Žena</option>
        <option>Muž</option>
      </select>
    </div>
      <button type="submit" class="btn btn-primary">Odoslať</button>
    </form>
  </div>
  </body>
</html>