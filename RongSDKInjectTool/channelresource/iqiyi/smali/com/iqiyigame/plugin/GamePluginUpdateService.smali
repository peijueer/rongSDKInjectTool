.class public Lcom/iqiyigame/plugin/GamePluginUpdateService;
.super Landroid/app/Service;
.source "GamePluginUpdateService.java"


# static fields
.field public static final ACTION_UPDATE:Ljava/lang/String; = "action.update"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 32
    const-string v3, "DLPluginUpdateService onCreate"

    invoke-static {v3}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->getPluginPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/iqiyigame/plugin/utils/GameConfigs;->PLUGIN_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "pluginFilePath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iqiyigame/plugin/GamePluginUpdateService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x1

    .line 40
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 41
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/iqiyigame/plugin/GamePluginUpdateService;->stopSelf()V

    .line 106
    :goto_0
    return-void

    .line 46
    :cond_0
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 47
    .local v2, "versionCode":I
    sget-object v3, Lcom/iqiyigame/plugin/utils/GameConfigs;->GAMEID:Ljava/lang/String;

    new-instance v4, Lcom/iqiyigame/plugin/GamePluginUpdateService$1;

    invoke-direct {v4, p0}, Lcom/iqiyigame/plugin/GamePluginUpdateService$1;-><init>(Lcom/iqiyigame/plugin/GamePluginUpdateService;)V

    invoke-static {p0, v3, v2, v4}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->checkPluginVersion(Landroid/content/Context;Ljava/lang/String;ILcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginUpdateListener;)V

    goto :goto_0
.end method
