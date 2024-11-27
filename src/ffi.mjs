export function log(str) {
  console.log(...cstdoutln(str));
}
export function info(str) {
  console.info(...cstdoutln(str));
}
export function error(str) {
  console.error(...cstdoutln(str));
}
export function warn(str) {
  console.warn(...cstdoutln(str));
}

function cstdoutln(str) {
  // Firstly, recognize if we are on browser or Node.js.
  if (typeof process === "undefined") {
    // Recognize the ANSI colour escape codes and convert the string to an array of strings and their respective colours.
    let parts = [];
    str.split("\x1b[0m").map((part) => {
      // This doesn't split the string properly. We need a second split.
      if (part.includes("\x1b") && !part.startsWith("\x1b")) {
        part
          .replaceAll("\x1b", "\r.\r\x1b")
          .split("\r.\r")
          .map((part) => {
            // console.log(part);
            parts.push(process_part(part));
          });
      } else {
        // console.log(part);
        parts.push(process_part(part));
      }
    });
    // Empty values
    let msg = "";
    let styles = '"‎'.repeat(24).split('"');
    // Let's fill them now!
    for (let partindex in parts) {
      let part = parts[partindex];
      msg = `${msg}%c${part.text}`;
      styles[partindex] = part.style;
    }
    //  Finally, log the message with the styles.
    return [msg, ...styles];
  } else {
    // We are on Node.js.
    // We can use console.log directly.
    return [str];
  }
}

function process_part(part) {
  if (part.match(/\x1b\[38;2;(\d+);(\d+);(\d+)m(.+)/)) {
    const match = part.match(/\x1b\[38;2;(\d+);(\d+);(\d+)m(.+)/);

    // Recognize the RGB colour values and the text.

    const r = parseInt(match[1]);
    const g = parseInt(match[2]);
    const b = parseInt(match[3]);
    const text = match[4];
    return { text, style: `color: rgb(${r}, ${g}, ${b})` };
  } else if (part.match(/\x1b\[48;2;(\d+);(\d+);(\d+)m(.+)/)) {
    const match = part.match(/\x1b\[48;2;(\d+);(\d+);(\d+)m(.+)/);
    // Also for background colours.

    const r = parseInt(match[1]);
    const g = parseInt(match[2]);
    const b = parseInt(match[3]);
    const text = match[4];
    return { text, style: `background-color: rgb(${r}, ${g}, ${b})` };

    // We don't support nested colours yet. Nested colours will be ignored.
  } else {
    return { text: part, style: "color: inherit; background-color: inherit;" };
  }
}
