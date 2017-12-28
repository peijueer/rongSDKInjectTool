.class public Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "GameBasePluginFragmentActivity.java"

# interfaces
.implements Lcom/iqiyigame/plugin/GamePlugin;


# static fields
.field private static final TAG:Ljava/lang/String; = "DLBasePluginFragmentActivity"


# instance fields
.field protected mFrom:I

.field protected mPluginManager:Lcom/iqiyigame/plugin/internal/GamePluginManager;

.field protected mPluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

.field protected mProxyActivity:Landroid/support/v4/app/FragmentActivity;

.field protected that:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 143
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 144
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public attach(Landroid/app/Activity;Lcom/iqiyigame/plugin/internal/GamePluginPackage;)V
    .locals 2
    .param p1, "proxyActivity"    # Landroid/app/Activity;
    .param p2, "pluginPackage"    # Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DLBasePluginFragmentActivity attach: proxyActivity= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 79
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    .end local p1    # "proxyActivity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    .line 80
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    iput-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->that:Landroid/support/v4/app/FragmentActivity;

    .line 81
    iput-object p2, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mPluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    .line 82
    return-void
.end method

.method public bindPluginService(Lcom/iqiyigame/plugin/internal/GameIntent;Landroid/content/ServiceConnection;I)I
    .locals 2
    .param p1, "dlIntent"    # Lcom/iqiyigame/plugin/internal/GameIntent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .prologue
    .line 466
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 467
    invoke-virtual {p1}, Lcom/iqiyigame/plugin/internal/GameIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mPluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    iget-object v0, v0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/iqiyigame/plugin/internal/GameIntent;->setPluginPackage(Ljava/lang/String;)V

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mPluginManager:Lcom/iqiyigame/plugin/internal/GamePluginManager;

    iget-object v1, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->that:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->bindPluginService(Landroid/content/Context;Lcom/iqiyigame/plugin/internal/GameIntent;Landroid/content/ServiceConnection;I)I

    move-result v0

    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 152
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 153
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 261
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 225
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 227
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 171
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 162
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 198
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 207
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 189
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mPluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    iget-object v0, v0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 180
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 182
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 215
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 216
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 218
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 490
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 492
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 498
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 500
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 251
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 252
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 243
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 234
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 269
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 270
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 272
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 277
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 279
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    const-string v2, "extra.from"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    .line 90
    :cond_0
    iget v2, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v2, :cond_1

    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    iput-object p0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    .line 93
    iget-object v2, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    iput-object v2, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->that:Landroid/support/v4/app/FragmentActivity;

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->that:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v2}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->getInstance(Landroid/content/Context;)Lcom/iqiyigame/plugin/internal/GamePluginManager;

    move-result-object v2

    iput-object v2, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mPluginManager:Lcom/iqiyigame/plugin/internal/GamePluginManager;

    .line 97
    sget-object v2, Lcom/iqiyi/sdk/platform/GamePlatformConstans;->defaultCountry:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    sget-object v3, Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;->China:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    if-eq v2, v3, :cond_2

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLBasePluginFragmentActivity onCreate: from= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v2, :cond_3

    const-string v2, "DLConstants.FROM_INTERNAL"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->that:Landroid/support/v4/app/FragmentActivity;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 104
    .local v1, "hasWriteContactsPermission":I
    iget-object v2, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->that:Landroid/support/v4/app/FragmentActivity;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 106
    .local v0, "hasReadPhonePermission":I
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 112
    .end local v0    # "hasReadPhonePermission":I
    .end local v1    # "hasWriteContactsPermission":I
    :cond_2
    return-void

    .line 98
    :cond_3
    const-string v2, "FROM_EXTERNAL"

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 415
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 416
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 418
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 376
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 378
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 389
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 390
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 392
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 396
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 397
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 399
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
    .line 310
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 311
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 313
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 422
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 423
    invoke-virtual {p0, p1}, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 425
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 362
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 364
    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 291
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 293
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 297
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 298
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 300
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 317
    iget v3, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v3, :cond_1

    .line 318
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 319
    sget-object v3, Lcom/iqiyi/sdk/platform/GamePlatformConstans;->defaultCountry:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    sget-object v4, Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;->China:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    if-eq v3, v4, :cond_1

    .line 320
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->that:Landroid/support/v4/app/FragmentActivity;

    .line 321
    .local v0, "act":Landroid/app/Activity;
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 322
    invoke-static {v0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 324
    .local v2, "hasWriteContactsPermission":I
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 327
    .local v1, "hasReadPhonePermission":I
    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    .line 329
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "No permission,exit"

    .line 330
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "OK"

    new-instance v5, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity$2;

    invoke-direct {v5, p0, v0}, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity$2;-><init>(Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;Landroid/app/Activity;)V

    .line 331
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Open permission"

    new-instance v5, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity$1;

    invoke-direct {v5, p0, v0}, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity$1;-><init>(Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;Landroid/app/Activity;)V

    .line 338
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 353
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 357
    .end local v0    # "act":Landroid/app/Activity;
    .end local v1    # "hasReadPhonePermission":I
    .end local v2    # "hasWriteContactsPermission":I
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 304
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 305
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 307
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 284
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 286
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 369
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 371
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 381
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 382
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 384
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
    .line 403
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 404
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 406
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 409
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 410
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowFocusChanged(Z)V

    .line 412
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 134
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 135
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 116
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 117
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 125
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 126
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public startPluginActivity(Lcom/iqiyigame/plugin/internal/GameIntent;)I
    .locals 1
    .param p1, "dlIntent"    # Lcom/iqiyigame/plugin/internal/GameIntent;

    .prologue
    .line 435
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->startPluginActivityForResult(Lcom/iqiyigame/plugin/internal/GameIntent;I)I

    move-result v0

    return v0
.end method

.method public startPluginActivityForResult(Lcom/iqiyigame/plugin/internal/GameIntent;I)I
    .locals 2
    .param p1, "dlIntent"    # Lcom/iqiyigame/plugin/internal/GameIntent;
    .param p2, "requestCode"    # I

    .prologue
    .line 446
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 447
    invoke-virtual {p1}, Lcom/iqiyigame/plugin/internal/GameIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mPluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    iget-object v0, v0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/iqiyigame/plugin/internal/GameIntent;->setPluginPackage(Ljava/lang/String;)V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mPluginManager:Lcom/iqiyigame/plugin/internal/GamePluginManager;

    iget-object v1, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->that:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->startPluginActivityForResult(Landroid/content/Context;Lcom/iqiyigame/plugin/internal/GameIntent;I)I

    move-result v0

    return v0
.end method

.method public startPluginService(Lcom/iqiyigame/plugin/internal/GameIntent;)I
    .locals 2
    .param p1, "dlIntent"    # Lcom/iqiyigame/plugin/internal/GameIntent;

    .prologue
    .line 456
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 457
    invoke-virtual {p1}, Lcom/iqiyigame/plugin/internal/GameIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mPluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    iget-object v0, v0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/iqiyigame/plugin/internal/GameIntent;->setPluginPackage(Ljava/lang/String;)V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mPluginManager:Lcom/iqiyigame/plugin/internal/GamePluginManager;

    iget-object v1, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->that:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1, p1}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->startPluginService(Landroid/content/Context;Lcom/iqiyigame/plugin/internal/GameIntent;)I

    move-result v0

    return v0
.end method

.method public unBindPluginService(Lcom/iqiyigame/plugin/internal/GameIntent;Landroid/content/ServiceConnection;)I
    .locals 2
    .param p1, "dlIntent"    # Lcom/iqiyigame/plugin/internal/GameIntent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 476
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 477
    invoke-virtual {p1}, Lcom/iqiyigame/plugin/internal/GameIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mPluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    iget-object v0, v0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/iqiyigame/plugin/internal/GameIntent;->setPluginPackage(Ljava/lang/String;)V

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->mPluginManager:Lcom/iqiyigame/plugin/internal/GamePluginManager;

    iget-object v1, p0, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;->that:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->unBindPluginService(Landroid/content/Context;Lcom/iqiyigame/plugin/internal/GameIntent;Landroid/content/ServiceConnection;)I

    move-result v0

    return v0
.end method
