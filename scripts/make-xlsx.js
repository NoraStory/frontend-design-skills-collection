const fs = require('fs');
const path = require('path');
const ExcelJS = require('exceljs');

const root = path.resolve(__dirname, '..');
const entries = JSON.parse(fs.readFileSync(path.join(root, 'data', 'repos.json'), 'utf8'));

if (entries.length < 50) throw new Error('Not enough entries: ' + entries.length);
for (const e of entries) {
  if (!e.license || typeof e.stars !== 'number' || e.archived) {
    throw new Error('Invalid entry: ' + e.repo);
  }
}

const wb = new ExcelJS.Workbook();
wb.creator = 'frontend-design-skills-collection';
wb.created = new Date('2026-11-02T00:00:00+08:00');
const ws = wb.addWorksheet('目录索引', {
  views: [{ state: 'frozen', ySplit: 1 }],
  properties: { tabColor: { argb: 'FF1F2937' } }
});

const columns = [
  { header: '序号', key: 'index', width: 7 },
  { header: '名称', key: 'name', width: 30 },
  { header: '仓库', key: 'repo', width: 55 },
  { header: '类别', key: 'category', width: 24 },
  { header: 'Star', key: 'stars', width: 11 },
  { header: '许可证', key: 'license', width: 16 },
  { header: '适用场景', key: 'fit', width: 62 },
  { header: '作者链接', key: 'authorUrl', width: 44 },
  { header: '数据日期', key: 'collectedAt', width: 14 }
];
ws.columns = columns;

const headerFill = { type: 'pattern', pattern: 'solid', fgColor: { argb: 'FF1F2937' } };
const zebraFill = { type: 'pattern', pattern: 'solid', fgColor: { argb: 'FFF7F9FC' } };
const border = {
  top: { style: 'thin', color: { argb: 'FFD9DEE7' } },
  left: { style: 'thin', color: { argb: 'FFD9DEE7' } },
  bottom: { style: 'thin', color: { argb: 'FFD9DEE7' } },
  right: { style: 'thin', color: { argb: 'FFD9DEE7' } }
};

const header = ws.getRow(1);
header.height = 28;
header.eachCell((cell) => {
  cell.fill = headerFill;
  cell.font = { name: 'Arial', size: 11, bold: true, color: { argb: 'FFFFFFFF' } };
  cell.alignment = { vertical: 'middle', horizontal: 'center' };
  cell.border = border;
});

entries.forEach((e, i) => {
  const row = ws.addRow({
    index: i + 1,
    name: e.name,
    repo: { text: e.url, hyperlink: e.url, tooltip: '打开 GitHub 仓库' },
    category: e.category,
    stars: e.stars,
    license: e.license,
    fit: e.fit,
    authorUrl: { text: e.authorUrl, hyperlink: e.authorUrl, tooltip: '打开作者 GitHub 主页' },
    collectedAt: e.collectedAt
  });
  row.height = 34;
  row.eachCell({ includeEmpty: true }, (cell, col) => {
    cell.font = { name: 'Arial', size: 10, color: { argb: 'FF1F2937' } };
    cell.alignment = { vertical: 'middle', wrapText: col === 7, horizontal: col === 1 || col === 5 ? 'center' : 'left' };
    cell.border = border;
    if (i % 2 === 1) cell.fill = zebraFill;
  });
  [3, 8].forEach((col) => {
    const cell = row.getCell(col);
    cell.font = { name: 'Arial', size: 10, color: { argb: 'FF1D4ED8' }, underline: true };
  });
  row.getCell(5).numFmt = '#,##0';
  row.getCell(9).alignment = { vertical: 'middle', horizontal: 'center' };
});

ws.autoFilter = { from: 'A1', to: `I${entries.length + 1}` };

const out = path.join(root, '目录索引.xlsx');
wb.xlsx.writeFile(out).then(() => {
  console.log(`Wrote ${out} with ${entries.length} rows.`);
});
