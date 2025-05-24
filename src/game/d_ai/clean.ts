const skips = ['//', 'BEGIN ~', '^NПРИМЕЧАНИЕ'];
const knowns = ['IF ~', 'SAY #', 'END', '~ THEN'];

export const clean = (inputText: string): string => {
    console.log('clean');
    const result: string[] = [];
    const lines = inputText.split('\n').map(line => line.length === 0 ? line : line.trim());

    let i = 0;
    while (i < lines.length) {
        let line = lines[i];

        if (line.length === 0 && lines[i + 1]?.length > 0 && knowns.some(x => lines[i + 1]?.startsWith(x))) {
            result.push(line);
            i++;
            continue;
        }

        if (skips.some(x => line.startsWith(x))) {
            i++;
            continue;
        }
        if (line.startsWith('IF WEIGHT')) {
            while (!lines[i].startsWith('~ THEN BEGIN')) {
                i++;
            }
            continue;
        }
        if (line.startsWith('~ GOTO')) {
            result[result.length - 1] = `${result[result.length - 1]} ${line}`;
            i++;
            continue;
        }

        if (line.startsWith('SAY #') && line.includes('/*') && !line.includes('*/')) {
            line = line + '*/';
        }

        if (knowns.some(x => line.startsWith(x))) {
            result.push(line);
        } else {
            result[result.length - 1] = `${result[result.length - 1]} ${line}`;
        }

        i++;
    }

    return result.join('\n');
}