const { app, BrowserWindow } = require('electron')

function crearVentana() {
  app.commandLine.appendSwitch('disable-remote-security');
  let ventana = new BrowserWindow({
    width: 800,
    height: 600,
    webPreferences: {
      nodeIntegration: true
    }
  })

  ventana.loadFile('./src/main/resources/static/index.html');
  ventana.on('closed', function () {
    ventana = null
  })
}


app.on('ready', crearVentana)

app.on('window-all-closed', function () {
  if (process.platform !== 'darwin') {
    app.quit()
  }
})

app.on('activate', function () {
  if (BrowserWindow.getAllWindows().length === 0) {
    crearVentana()
  }
})

