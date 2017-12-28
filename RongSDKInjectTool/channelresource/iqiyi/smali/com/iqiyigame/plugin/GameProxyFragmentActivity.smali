.class public Lcom/iqiyigame/plugin/GameProxyFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "GameProxyFragmentActivity.java"

# interfaces
.implements Lcom/iqiyigame/plugin/internal/GameAttachable;


# instance fields
.field private impl:Lcom/iqiyigame/plugin/internal/GameProxyImpl;

.field protected mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 41
    new-instance v0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;

    invoke-direct {v0, p0}, Lcom/iqiyigame/plugin/internal/GameProxyImpl;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->impl:Lcom/iqiyigame/plugin/internal/GameProxyImpl;

    return-void
.end method


# virtual methods
.method public attach(Lcom/iqiyigame/plugin/GamePlugin;Lcom/iqiyigame/plugin/internal/GamePluginManager;)V
    .locals 0
    .param p1, "remoteActivity"    # Lcom/iqiyigame/plugin/GamePlugin;
    .param p2, "pluginManager"    # Lcom/iqiyigame/plugin/internal/GamePluginManager;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    .line 52
    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->impl:Lcom/iqiyigame/plugin/internal/GameProxyImpl;

    invoke-virtual {v0}, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->impl:Lcom/iqiyigame/plugin/internal/GameProxyImpl;

    invoke-virtual {v0}, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->impl:Lcom/iqiyigame/plugin/internal/GameProxyImpl;

    invoke-virtual {v0}, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->impl:Lcom/iqiyigame/plugin/internal/GameProxyImpl;

    invoke-virtual {v0}, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemoteActivity()Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    instance-of v0, v0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    check-cast v0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;

    .line 238
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->impl:Lcom/iqiyigame/plugin/internal/GameProxyImpl;

    invoke-virtual {v0}, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->impl:Lcom/iqiyigame/plugin/internal/GameProxyImpl;

    invoke-virtual {v0}, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->impl:Lcom/iqiyigame/plugin/internal/GameProxyImpl;

    invoke-virtual {v0}, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->impl:Lcom/iqiyigame/plugin/internal/GameProxyImpl;

    invoke-virtual {v0}, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    invoke-interface {v0, p1, p2, p3}, Lcom/iqiyigame/plugin/GamePlugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 86
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 87
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PPSGameProxyFragmentActivity onBackPressed : mRemoteActivity is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    invoke-interface {v0}, Lcom/iqiyigame/plugin/GamePlugin;->onBackPressed()V

    .line 169
    :goto_1
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->impl:Lcom/iqiyigame/plugin/internal/GameProxyImpl;

    invoke-virtual {p0}, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->onCreate(Landroid/content/Intent;)V

    .line 47
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    invoke-interface {v0, p1}, Lcom/iqiyigame/plugin/GamePlugin;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 223
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    invoke-interface {v0}, Lcom/iqiyigame/plugin/GamePlugin;->onDestroy()V

    .line 134
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 135
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PPSGameProxyFragmentActivity onKeyDown : mRemoteActivity is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    if-eqz v0, :cond_2

    .line 184
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->onBackPressed()V

    .line 191
    :goto_1
    return v1

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    invoke-interface {v0, p1, p2}, Lcom/iqiyigame/plugin/GamePlugin;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 191
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    invoke-interface {v0, p1, p2}, Lcom/iqiyigame/plugin/GamePlugin;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 199
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    invoke-interface {v0, p1}, Lcom/iqiyigame/plugin/GamePlugin;->onNewIntent(Landroid/content/Intent;)V

    .line 158
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 159
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    invoke-interface {v0, p1}, Lcom/iqiyigame/plugin/GamePlugin;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 231
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    invoke-interface {v0}, Lcom/iqiyigame/plugin/GamePlugin;->onPause()V

    .line 118
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 119
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    invoke-interface {v0}, Lcom/iqiyigame/plugin/GamePlugin;->onRestart()V

    .line 102
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 103
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    invoke-interface {v0, p1}, Lcom/iqiyigame/plugin/GamePlugin;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 150
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 151
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    invoke-interface {v0}, Lcom/iqiyigame/plugin/GamePlugin;->onResume()V

    .line 110
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 111
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    invoke-interface {v0, p1}, Lcom/iqiyigame/plugin/GamePlugin;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 143
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    invoke-interface {v0}, Lcom/iqiyigame/plugin/GamePlugin;->onStart()V

    .line 94
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 95
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    invoke-interface {v0}, Lcom/iqiyigame/plugin/GamePlugin;->onStop()V

    .line 126
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 127
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    invoke-interface {v0, p1}, Lcom/iqiyigame/plugin/GamePlugin;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 176
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    invoke-interface {v0, p1}, Lcom/iqiyigame/plugin/GamePlugin;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 207
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 208
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 212
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;->mRemoteActivity:Lcom/iqiyigame/plugin/GamePlugin;

    invoke-interface {v0, p1}, Lcom/iqiyigame/plugin/GamePlugin;->onWindowFocusChanged(Z)V

    .line 215
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowFocusChanged(Z)V

    .line 216
    return-void
.end method
