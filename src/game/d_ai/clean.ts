const skips = ['//', 'BEGIN ~', '^NПРИМЕЧАНИЕ'];
const knowns = ['IF ~', 'SAY #', 'END', '~ THEN BEGIN'];

export const clean = (inputText: string): string => {
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

        if (knowns.some(x => line.startsWith(x))) {
            result.push(line);
        } else {
            result[result.length - 1] = `${result[result.length - 1]} ${line}`;
        }

        i++;
    }

    return result.map(x => x.startsWith('SAY #') && x.includes('/*') && !x.includes('*/') ? x + '*/' : x).join('\n');
}