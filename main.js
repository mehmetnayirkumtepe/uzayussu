const {app,BrowserWindow,Menu}=require('electron');
app.whenReady().then(()=>{
  Menu.setApplicationMenu(null);
  const w=new BrowserWindow({width:1100,height:800,autoHideMenuBar:true,title:'Uzay Üssü Komutanı',icon:__dirname+'/icon.png',backgroundColor:'#0e1120'});
  w.loadFile('index.html');
  w.webContents.on('before-input-event',(e,i)=>{if(i.type==='keyDown'&&i.key==='F11'){w.setFullScreen(!w.isFullScreen())}});
});
app.on('window-all-closed',()=>app.quit());
