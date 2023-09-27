window.addEventListener('message', (event) => {
    switch (event.data.action) {
        case 'openUI':
            document.body.style.display = 'flex';
            break;
        case 'closeUI':
            document.body.style.display = 'none';
            break;
    }
});

document.addEventListener('keydown', (event) => {
    if (event.key === 'g' || event.key === 'G') {
        document.body.style.display = 'none';
        fetch('https://ud-checklist/exit', { method: 'POST' });
    }
});
