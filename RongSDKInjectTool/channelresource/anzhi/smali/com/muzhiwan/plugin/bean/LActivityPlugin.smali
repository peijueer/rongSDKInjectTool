.class public Lcom/muzhiwan/plugin/bean/LActivityPlugin;
.super Ljava/lang/Object;
.source "LActivityPlugin.java"


# instance fields
.field private CurrentPluginActivity:Landroid/app/Activity;

.field private control:Lcom/muzhiwan/plugin/control/PluginActivityControl;

.field private currentPluginTheme:Landroid/content/res/Resources$Theme;

.field from:Lcom/muzhiwan/plugin/bean/LAPK;

.field private proxyParent:Landroid/app/Activity;

.field private topActivityName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "proxyParent"    # Landroid/app/Activity;
    .param p2, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->topActivityName:Ljava/lang/String;

    .line 141
    iput-object p1, p0, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->proxyParent:Landroid/app/Activity;

    .line 142
    invoke-static {p2}, Lcom/muzhiwan/plugin/manager/LApkManager;->get(Ljava/lang/String;)Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v0

    iput-object v0, p0, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->from:Lcom/muzhiwan/plugin/bean/LAPK;

    .line 143
    iget-object v0, p0, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->from:Lcom/muzhiwan/plugin/bean/LAPK;

    invoke-virtual {v0, p1}, Lcom/muzhiwan/plugin/bean/LAPK;->bindDexLoader(Landroid/content/Context;)V

    .line 146
    return-void
.end method


# virtual methods
.method public canUse()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->proxyParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getCurrentPluginActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public from()Lcom/muzhiwan/plugin/bean/LAPK;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->from:Lcom/muzhiwan/plugin/bean/LAPK;

    return-object v0
.end method

.method public getControl()Lcom/muzhiwan/plugin/control/PluginActivityControl;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->control:Lcom/muzhiwan/plugin/control/PluginActivityControl;

    return-object v0
.end method

.method public getCurrentPluginActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->CurrentPluginActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getPluginPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->from:Lcom/muzhiwan/plugin/bean/LAPK;

    iget-object v0, v0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginPath:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyParent()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->proxyParent:Landroid/app/Activity;

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->currentPluginTheme:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public getTopActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->topActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public setControl(Lcom/muzhiwan/plugin/control/PluginActivityControl;)V
    .locals 0
    .param p1, "control"    # Lcom/muzhiwan/plugin/control/PluginActivityControl;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->control:Lcom/muzhiwan/plugin/control/PluginActivityControl;

    .line 69
    return-void
.end method

.method public setCurrentPluginActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "currentPluginActivity"    # Landroid/app/Activity;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->CurrentPluginActivity:Landroid/app/Activity;

    .line 124
    return-void
.end method

.method public setProxyParent(Landroid/app/Activity;)V
    .locals 0
    .param p1, "proxyParent"    # Landroid/app/Activity;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->proxyParent:Landroid/app/Activity;

    .line 87
    return-void
.end method

.method public setTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1, "currentPluginTheme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->currentPluginTheme:Landroid/content/res/Resources$Theme;

    .line 113
    return-void
.end method

.method public setTopActivityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "topActivityName"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->topActivityName:Ljava/lang/String;

    .line 53
    return-void
.end method
