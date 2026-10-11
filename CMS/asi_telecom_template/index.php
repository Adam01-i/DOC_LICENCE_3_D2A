
<!DOCTYPE html>
<html lang="fr">
<head>
  <jdoc:include type="head" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
</head>
<body>
  <header class="bg-primary text-white p-3 text-center">
    <h1>ASI Telecom</h1>
    <p>Connectez votre monde</p>
  </header>

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
      <jdoc:include type="modules" name="menu" style="none" />
    </div>
  </nav>

  <main class="container my-4">
    <jdoc:include type="component" />
  </main>

  <footer class="bg-dark text-white text-center p-3 mt-4">
    <p>&copy; 2025 ASI Telecom. Tous droits réservés.</p>
  </footer>
</body>
</html>
