import zipfile, os

src = os.path.dirname(os.path.abspath(__file__))
dst = os.path.join(os.environ['APPDATA'], 'PolyMC', 'instances', '26.1', '.minecraft',
                   'saves', 'Datapack Ledger', 'datapacks', 'ledger.zip')

with zipfile.ZipFile(dst, 'w', zipfile.ZIP_DEFLATED) as z:
    for root, dirs, files in os.walk(os.path.join(src, 'data')):
        for f in files:
            full = os.path.join(root, f)
            arc = full[len(src)+1:].replace(os.sep, '/')
            z.write(full, arc)
    z.write(os.path.join(src, 'pack.mcmeta'), 'pack.mcmeta')
    z.write(os.path.join(src, 'README.md'), 'README.md')

print('done')