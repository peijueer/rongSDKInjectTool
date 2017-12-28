.class public Lcom/iqiyigame/plugin/internal/GameProxyImpl;
.super Ljava/lang/Object;
.source "GameProxyImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DLProxyImpl"


# instance fields
.field private classLoader:Ljava/lang/ClassLoader;

.field private mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mClass:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field protected mPluginActivity:Lcom/iqiyigame/plugin/GamePlugin;

.field public mPluginClassLoader:Ljava/lang/ClassLoader;

.field private mPluginManager:Lcom/iqiyigame/plugin/internal/GamePluginManager;

.field private mPluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

.field private mProxyActivity:Landroid/app/Activity;

.field private mResources:Landroid/content/res/Resources;

.field private mTheme:Landroid/content/res/Resources$Theme;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mProxyActivity:Landroid/app/Activity;

    .line 68
    return-void
.end method

.method private handleActivityInfo()V
    .locals 5

    .prologue
    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLProxyImpl handleActivityInfo, theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->theme:I

    if-lez v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mProxyActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTheme(I)V

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 106
    .local v1, "superTheme":Landroid/content/res/Resources$Theme;
    iget-object v2, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    iput-object v2, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mTheme:Landroid/content/res/Resources$Theme;

    .line 107
    iget-object v2, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 110
    :try_start_0
    iget-object v2, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mTheme:Landroid/content/res/Resources$Theme;

    iget-object v3, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->theme:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initializeActivityInfo()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 71
    iget-object v4, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mPluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    iget-object v2, v4, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 72
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_4

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v4, v4

    if-lez v4, :cond_4

    .line 73
    iget-object v4, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mClass:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 74
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v4, v4, v3

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v4, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mClass:Ljava/lang/String;

    .line 78
    :cond_0
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v4, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 79
    .local v1, "defaultTheme":I
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v0, v4, v3

    .line 80
    .local v0, "a":Landroid/content/pm/ActivityInfo;
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mClass:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 81
    iput-object v0, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 83
    iget-object v6, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v6, v6, Landroid/content/pm/ActivityInfo;->theme:I

    if-nez v6, :cond_1

    .line 84
    if-eqz v1, :cond_2

    .line 85
    iget-object v6, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iput v1, v6, Landroid/content/pm/ActivityInfo;->theme:I

    .line 79
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    :cond_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-lt v6, v7, :cond_3

    .line 88
    iget-object v6, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    const v7, 0x1030128

    iput v7, v6, Landroid/content/pm/ActivityInfo;->theme:I

    goto :goto_1

    .line 90
    :cond_3
    iget-object v6, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    const v7, 0x1030005

    iput v7, v6, Landroid/content/pm/ActivityInfo;->theme:I

    goto :goto_1

    .line 98
    .end local v0    # "a":Landroid/content/pm/ActivityInfo;
    .end local v1    # "defaultTheme":I
    :cond_4
    return-void
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mAssetManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getRemoteActivity()Lcom/iqiyigame/plugin/GamePlugin;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mPluginActivity:Lcom/iqiyigame/plugin/GamePlugin;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mTheme:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method protected launchTargetActivity()V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    iget-object v7, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mClass:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 144
    .local v4, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 145
    .local v5, "localConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 146
    .local v3, "instance":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Lcom/iqiyigame/plugin/GamePlugin;

    move-object v6, v0

    iput-object v6, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mPluginActivity:Lcom/iqiyigame/plugin/GamePlugin;

    .line 147
    iget-object v6, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mProxyActivity:Landroid/app/Activity;

    check-cast v6, Lcom/iqiyigame/plugin/internal/GameAttachable;

    iget-object v7, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mPluginActivity:Lcom/iqiyigame/plugin/GamePlugin;

    iget-object v8, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mPluginManager:Lcom/iqiyigame/plugin/internal/GamePluginManager;

    invoke-interface {v6, v7, v8}, Lcom/iqiyigame/plugin/internal/GameAttachable;->attach(Lcom/iqiyigame/plugin/GamePlugin;Lcom/iqiyigame/plugin/internal/GamePluginManager;)V

    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DLProxyImpl instance = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 150
    iget-object v6, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mPluginActivity:Lcom/iqiyigame/plugin/GamePlugin;

    iget-object v7, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mProxyActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mPluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    invoke-interface {v6, v7, v8}, Lcom/iqiyigame/plugin/GamePlugin;->attach(Landroid/app/Activity;Lcom/iqiyigame/plugin/internal/GamePluginPackage;)V

    .line 152
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v6, "extra.from"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    iget-object v6, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mPluginActivity:Lcom/iqiyigame/plugin/GamePlugin;

    invoke-interface {v6, v1}, Lcom/iqiyigame/plugin/GamePlugin;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "instance":Ljava/lang/Object;
    .end local v4    # "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "localConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v2

    .line 156
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    sget-object v0, Lcom/iqiyigame/plugin/utils/GameConfigs;->sPluginClassloader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 123
    const-string v0, "extra.package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mPackageName:Ljava/lang/String;

    .line 124
    const-string v0, "extra.class"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mClass:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DLProxyImpl mClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mProxyActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->getInstance(Landroid/content/Context;)Lcom/iqiyigame/plugin/internal/GamePluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mPluginManager:Lcom/iqiyigame/plugin/internal/GamePluginManager;

    .line 128
    iget-object v0, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mPluginManager:Lcom/iqiyigame/plugin/internal/GamePluginManager;

    iget-object v1, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->getPackage(Ljava/lang/String;)Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mPluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    .line 129
    iget-object v0, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mPluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mPluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    iget-object v0, v0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    iput-object v0, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->classLoader:Ljava/lang/ClassLoader;

    .line 131
    iget-object v0, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mPluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    iget-object v0, v0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->assetManager:Landroid/content/res/AssetManager;

    iput-object v0, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mAssetManager:Landroid/content/res/AssetManager;

    .line 132
    iget-object v0, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mPluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    iget-object v0, v0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->resources:Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->mResources:Landroid/content/res/Resources;

    .line 134
    invoke-direct {p0}, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->initializeActivityInfo()V

    .line 135
    invoke-direct {p0}, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->handleActivityInfo()V

    .line 136
    invoke-virtual {p0}, Lcom/iqiyigame/plugin/internal/GameProxyImpl;->launchTargetActivity()V

    .line 138
    :cond_0
    return-void
.end method
