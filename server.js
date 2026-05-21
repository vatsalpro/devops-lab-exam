const express = require('express');
const path = require('path');
const app = express();
const port = process.env.PORT || 3000;

// Serve static files from the public directory
app.use(express.static(path.join(__dirname, 'public')));

// Health check endpoint for CI/CD monitoring
app.get('/api/health', (req, res) => {
  res.status(200).json({ 
      status: 'Healthy', 
      message: 'CI/CD Lab Exam Pipeline is active!',
      timestamp: new Date()
  });
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});
