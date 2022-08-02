import path from "path";
import express from 'express';

const app = express();

// Static folder
app.use(express.static(path.join(__dirname, '../../../', 'frontend/client/build'), {extensions: ['html', "js"]}));

const PORT = process.env.PORT || 5000
app.listen(PORT, () => {
    console.log(`Server listening on port ${PORT}`);
});
