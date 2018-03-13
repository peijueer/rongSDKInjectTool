.class public Lcom/muzhiwan/plugin/bean/LAPK;
.super Ljava/lang/Object;
.source "LAPK.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public applicationName:Ljava/lang/String;

.field public pluginApplication:Landroid/app/Application;

.field public pluginAssets:Landroid/content/res/AssetManager;

.field public pluginLoader:Ldalvik/system/DexClassLoader;

.field public pluginPath:Ljava/lang/String;

.field public pluginPkgInfo:Landroid/content/pm/PackageInfo;

.field public pluginRes:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/muzhiwan/plugin/bean/LAPK;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muzhiwan/plugin/bean/LAPK;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attach(Ljava/lang/String;)V
    .locals 0
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginPath:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public bindDexLoader(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 115
    iget-object v1, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginPath:Ljava/lang/String;

    invoke-static {}, Lcom/muzhiwan/plugin/manager/LPluginDexManager;->getSystemLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    invoke-static {v1, p1, v0}, Lcom/muzhiwan/plugin/manager/LPluginDexManager;->getClassLoader(Ljava/lang/String;Landroid/content/Context;Ljava/lang/ClassLoader;)Lcom/muzhiwan/plugin/manager/LPluginDexManager;

    move-result-object v0

    iput-object v0, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginLoader:Ldalvik/system/DexClassLoader;

    .line 116
    return-void

    .line 115
    :cond_0
    invoke-static {}, Lcom/muzhiwan/plugin/manager/LPluginDexManager;->getSystemLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public canUse()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginPkgInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginLoader:Ldalvik/system/DexClassLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public debug()V
    .locals 3

    .prologue
    .line 101
    sget-object v0, Lcom/muzhiwan/plugin/bean/LAPK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Plugin Path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v0, Lcom/muzhiwan/plugin/bean/LAPK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Plugin Resources = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v0, Lcom/muzhiwan/plugin/bean/LAPK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Plugin Assets = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v0, Lcom/muzhiwan/plugin/bean/LAPK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Plugin Loader = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginLoader:Ldalvik/system/DexClassLoader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v0, Lcom/muzhiwan/plugin/bean/LAPK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Plugin PackageInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginPkgInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v0, Lcom/muzhiwan/plugin/bean/LAPK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Plugin Application name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muzhiwan/plugin/bean/LAPK;->applicationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v0, Lcom/muzhiwan/plugin/bean/LAPK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Plugin Application = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginApplication:Landroid/app/Application;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/muzhiwan/plugin/bean/LAPK;->applicationName:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginPkgInfo:Landroid/content/pm/PackageInfo;

    .line 125
    iput-object v0, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginPath:Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginLoader:Ldalvik/system/DexClassLoader;

    .line 127
    iput-object v0, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginAssets:Landroid/content/res/AssetManager;

    .line 128
    iput-object v0, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginApplication:Landroid/app/Application;

    .line 129
    iput-object v0, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginRes:Landroid/content/res/Resources;

    .line 130
    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/muzhiwan/plugin/bean/LAPK;->applicationName:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setPluginApplication(Landroid/app/Application;)V
    .locals 0
    .param p1, "pluginApplication"    # Landroid/app/Application;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginApplication:Landroid/app/Application;

    .line 79
    return-void
.end method

.method public setPluginAssets(Landroid/content/res/AssetManager;)V
    .locals 0
    .param p1, "pluginAssets"    # Landroid/content/res/AssetManager;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginAssets:Landroid/content/res/AssetManager;

    .line 71
    return-void
.end method

.method public setPluginPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginPath"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginPath:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setPluginPkgInfo(Landroid/content/pm/PackageInfo;)V
    .locals 0
    .param p1, "pluginPkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginPkgInfo:Landroid/content/pm/PackageInfo;

    .line 63
    return-void
.end method

.method public setPluginRes(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "pluginRes"    # Landroid/content/res/Resources;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginRes:Landroid/content/res/Resources;

    .line 67
    return-void
.end method
