<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DbBackup - Export Engine</title>
    <style>
        body { font-family: monospace; background-color: #f8fafc; color: #0f172a; padding: 40px 20px; }
        .db-box { background: #ffffff; padding: 25px; border-radius: 8px; border: 1px solid #e2e8f0; max-width: 440px; margin: auto; box-shadow: 0 1px 3px rgba(0,0,0,0.05); }
        h3 { color: #16a34a; margin: 0 0 12px 0; font-size: 16px; font-weight: bold; }
        label { display: block; margin-top: 14px; margin-bottom: 4px; font-weight: bold; font-size: 12px; color: #64748b; text-transform: uppercase; }
        input[type="text"], select { width: 100%; padding: 8px 12px; border: 1px solid #cbd5e1; border-radius: 4px; box-sizing: border-box; background-color: #f8fafc; font-family: inherit; }
        input:focus, select:focus { outline: 2px solid #16a34a; background-color: #fff; }
        .btn-dump { background-color: #16a34a; color: white; border: none; padding: 10px; width: 100%; border-radius: 4px; font-size: 14px; font-weight: bold; cursor: pointer; margin-top: 20px; font-family: inherit; }
        .btn-dump:hover { background-color: #15803d; }
    </style>
</head>
<body>

<div class="db-box">
    <h3>📦 SQL Schema Export Utility</h3>

    <form action="triggerDatabaseBackup" method="POST">
        <label for="dbName">Target Database Namespace:</label>
        <input type="text" id="dbName" name="targetDatabase" placeholder="production_user_db" required>

        <label for="format">Export Output Structure:</label>
        <select id="format" name="backupFormat">
            <option value="SQL">Plaintext Raw SQL Scripts (.sql)</option>
            <option value="JSON">Compressed Structured JSON Objects (.json)</option>
            <option value="CSV">Flat Comma-Separated Values (.csv Table Dump)</option>
        </select>

        <label for="scope">Dump Execution Scope:</label>
        <select id="scope" name="backupScope">
            <option value="FULL">Full Instance (Schema + Core Records)</option>
            <option value="SCHEMA">Definitions Only (DDL No-Data)</option>
        </select>

        <button type="submit" class="btn-dump">Dispatch Dump Process</button>
    </form>
</div>

</body>
</html>
