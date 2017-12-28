.class public Lcom/iqiyigame/plugin/internal/GamePluginPackage;
.super Ljava/lang/Object;
.source "GamePluginPackage.java"


# instance fields
.field public assetManager:Landroid/content/res/AssetManager;

.field public classLoader:Ldalvik/system/DexClassLoader;

.field public defaultActivity:Ljava/lang/String;

.field public packageInfo:Landroid/content/pm/PackageInfo;

.field public packageName:Ljava/lang/String;

.field public resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Ldalvik/system/DexClassLoader;Landroid/content/res/Resources;Landroid/content/pm/PackageInfo;Landroid/content/res/AssetManager;)V
    .locals 1
    .param p1, "loader"    # Ldalvik/system/DexClassLoader;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p4, "assetManager"    # Landroid/content/res/AssetManager;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-object v0, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->packageName:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    .line 46
    invoke-virtual {p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    if-nez v0, :cond_0

    .end local p4    # "assetManager":Landroid/content/res/AssetManager;
    :goto_0
    iput-object p4, p0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->assetManager:Landroid/content/res/AssetManager;

    .line 47
    iput-object p2, p0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->resources:Landroid/content/res/Resources;

    .line 48
    iput-object p3, p0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 50
    invoke-direct {p0}, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->parseDefaultActivityName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->defaultActivity:Ljava/lang/String;

    .line 51
    return-void

    .line 46
    .restart local p4    # "assetManager":Landroid/content/res/AssetManager;
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p4

    goto :goto_0
.end method

.method private final parseDefaultActivityName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
