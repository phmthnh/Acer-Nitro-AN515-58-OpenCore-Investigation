"""Check published hashes in a snapshot folder or ZIP without extracting it."""
import argparse,hashlib,json,pathlib,zipfile

parser=argparse.ArgumentParser()
parser.add_argument('snapshot',type=pathlib.Path)
parser.add_argument('--manifest',type=pathlib.Path,default=pathlib.Path(__file__).resolve().parents[1]/'evidence'/'drive-G-20261021-manifest.json')
args=parser.parse_args()
manifest=json.loads(args.manifest.read_text(encoding='utf-8'))
archive=zipfile.ZipFile(args.snapshot) if args.snapshot.is_file() else None
errors=[]
for item in manifest['files']:
    try:
        handle=archive.open(item['path']) if archive else (args.snapshot/item['path']).open('rb')
        digest=hashlib.sha256();size=0
        with handle:
            for chunk in iter(lambda:handle.read(8*1024*1024),b''):
                digest.update(chunk);size+=len(chunk)
        if size!=item['published_size'] or digest.hexdigest()!=item['published_sha256']:
            errors.append(item['path'])
    except (FileNotFoundError,KeyError,zipfile.BadZipFile) as error:
        errors.append(item['path']+': '+str(error))
if archive:archive.close()
if errors:
    print('FAILED:',*errors,sep='\n');raise SystemExit(1)
print('Verified',len(manifest['files']),'published files; all sizes and SHA256 match.')
