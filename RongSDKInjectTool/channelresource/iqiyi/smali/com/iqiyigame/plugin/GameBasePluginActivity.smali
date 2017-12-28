.class public Lcom/iqiyigame/plugin/GameBasePluginActivity;
.super Landroid/app/Activity;
.source "GameBasePluginActivity.java"

# interfaces
.implements Lcom/iqiyigame/plugin/GamePlugin;


# static fields
.field private static final TAG:Ljava/lang/String; = "DLBasePluginActivity"


# instance fields
.field protected mFrom:I

.field protected mPluginManager:Lcom/iqiyigame/plugin/internal/GamePluginManager;

.field protected mPluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

.field protected mProxyActivity:Landroid/app/Activity;

.field protected that:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 123
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 124
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public attach(Landroid/app/Activity;Lcom/iqiyigame/plugin/internal/GamePluginPackage;)V
    .locals 2
    .param p1, "proxyActivity"    # Landroid/app/Activity;
    .param p2, "pluginPackage"    # Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DLBasePluginActivity attach: proxyActivity= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    .line 74
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->that:Landroid/app/Activity;

    .line 75
    iput-object p2, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mPluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    .line 76
    return-void
.end method

.method public bindPluginService(Lcom/iqiyigame/plugin/internal/GameIntent;Landroid/content/ServiceConnection;I)I
    .locals 2
    .param p1, "dlIntent"    # Lcom/iqiyigame/plugin/internal/GameIntent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .prologue
    .line 398
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 399
    invoke-virtual {p1}, Lcom/iqiyigame/plugin/internal/GameIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mPluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    iget-object v0, v0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/iqiyigame/plugin/internal/GameIntent;->setPluginPackage(Ljava/lang/String;)V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mPluginManager:Lcom/iqiyigame/plugin/internal/GamePluginManager;

    iget-object v1, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->bindPluginService(Landroid/content/Context;Lcom/iqiyigame/plugin/internal/GameIntent;Landroid/content/ServiceConnection;I)I

    move-result v0

    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 132
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 241
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 205
    invoke-super {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 207
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 151
    invoke-super {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 142
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 178
    invoke-super {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 187
    invoke-super {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 169
    invoke-super {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mPluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    iget-object v0, v0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 160
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 195
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 196
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 231
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 232
    invoke-super {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 223
    invoke-super {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 214
    invoke-super {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 216
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 256
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 257
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 259
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 250
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 252
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 81
    const-string v0, "extra.from"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    .line 83
    :cond_0
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_1

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    iput-object p0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    .line 86
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->that:Landroid/app/Activity;

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->that:Landroid/app/Activity;

    invoke-static {v0}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->getInstance(Landroid/content/Context;)Lcom/iqiyigame/plugin/internal/GamePluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mPluginManager:Lcom/iqiyigame/plugin/internal/GamePluginManager;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DLBasePluginActivity onCreate: from= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_2

    const-string v0, "DLConstants.FROM_INTERNAL"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 92
    return-void

    .line 90
    :cond_2
    const-string v0, "FROM_EXTERNAL"

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 350
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 351
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 353
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 319
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 321
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 331
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 332
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 334
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 290
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 291
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 293
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 357
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 358
    invoke-virtual {p0, p1}, Lcom/iqiyigame/plugin/GameBasePluginActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 360
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 305
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 307
    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 271
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 273
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 277
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 278
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 280
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 298
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 300
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 284
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 285
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 287
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 264
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 266
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 312
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 314
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 324
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 325
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 327
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 338
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 339
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 341
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 344
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 345
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 347
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 114
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 96
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 105
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 106
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public startPluginActivity(Lcom/iqiyigame/plugin/internal/GameIntent;)I
    .locals 1
    .param p1, "dlIntent"    # Lcom/iqiyigame/plugin/internal/GameIntent;

    .prologue
    .line 370
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/iqiyigame/plugin/GameBasePluginActivity;->startPluginActivityForResult(Lcom/iqiyigame/plugin/internal/GameIntent;I)I

    move-result v0

    return v0
.end method

.method public startPluginActivityForResult(Lcom/iqiyigame/plugin/internal/GameIntent;I)I
    .locals 2
    .param p1, "dlIntent"    # Lcom/iqiyigame/plugin/internal/GameIntent;
    .param p2, "requestCode"    # I

    .prologue
    .line 380
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 381
    invoke-virtual {p1}, Lcom/iqiyigame/plugin/internal/GameIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mPluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    iget-object v0, v0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/iqiyigame/plugin/internal/GameIntent;->setPluginPackage(Ljava/lang/String;)V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mPluginManager:Lcom/iqiyigame/plugin/internal/GamePluginManager;

    iget-object v1, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->startPluginActivityForResult(Landroid/content/Context;Lcom/iqiyigame/plugin/internal/GameIntent;I)I

    move-result v0

    return v0
.end method

.method public startPluginService(Lcom/iqiyigame/plugin/internal/GameIntent;)I
    .locals 2
    .param p1, "dlIntent"    # Lcom/iqiyigame/plugin/internal/GameIntent;

    .prologue
    .line 389
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 390
    invoke-virtual {p1}, Lcom/iqiyigame/plugin/internal/GameIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mPluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    iget-object v0, v0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/iqiyigame/plugin/internal/GameIntent;->setPluginPackage(Ljava/lang/String;)V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mPluginManager:Lcom/iqiyigame/plugin/internal/GamePluginManager;

    iget-object v1, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->startPluginService(Landroid/content/Context;Lcom/iqiyigame/plugin/internal/GameIntent;)I

    move-result v0

    return v0
.end method

.method public unBindPluginService(Lcom/iqiyigame/plugin/internal/GameIntent;Landroid/content/ServiceConnection;)I
    .locals 2
    .param p1, "dlIntent"    # Lcom/iqiyigame/plugin/internal/GameIntent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 407
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 408
    invoke-virtual {p1}, Lcom/iqiyigame/plugin/internal/GameIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mPluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    iget-object v0, v0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/iqiyigame/plugin/internal/GameIntent;->setPluginPackage(Ljava/lang/String;)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->mPluginManager:Lcom/iqiyigame/plugin/internal/GamePluginManager;

    iget-object v1, p0, Lcom/iqiyigame/plugin/GameBasePluginActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->unBindPluginService(Landroid/content/Context;Lcom/iqiyigame/plugin/internal/GameIntent;Landroid/content/ServiceConnection;)I

    move-result v0

    return v0
.end method
