.class public Lcom/muzhiwan/plugin/bean/LServicePlugin;
.super Ljava/lang/Object;
.source "LServicePlugin.java"


# instance fields
.field private CurrentPluginService:Landroid/app/Service;

.field from:Lcom/muzhiwan/plugin/bean/LAPK;

.field private proxyParent:Landroid/app/Service;

.field private topServiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Service;Ljava/lang/String;)V
    .locals 1
    .param p1, "proxyParent"    # Landroid/app/Service;
    .param p2, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muzhiwan/plugin/bean/LServicePlugin;->topServiceName:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/muzhiwan/plugin/bean/LServicePlugin;->proxyParent:Landroid/app/Service;

    .line 27
    invoke-static {p2}, Lcom/muzhiwan/plugin/manager/LApkManager;->get(Ljava/lang/String;)Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v0

    iput-object v0, p0, Lcom/muzhiwan/plugin/bean/LServicePlugin;->from:Lcom/muzhiwan/plugin/bean/LAPK;

    .line 28
    iget-object v0, p0, Lcom/muzhiwan/plugin/bean/LServicePlugin;->from:Lcom/muzhiwan/plugin/bean/LAPK;

    invoke-virtual {v0, p1}, Lcom/muzhiwan/plugin/bean/LAPK;->bindDexLoader(Landroid/content/Context;)V

    .line 31
    return-void
.end method


# virtual methods
.method public canUse()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/muzhiwan/plugin/bean/LServicePlugin;->proxyParent:Landroid/app/Service;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->getCurrentPluginService()Landroid/app/Service;

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
    .line 35
    iget-object v0, p0, Lcom/muzhiwan/plugin/bean/LServicePlugin;->from:Lcom/muzhiwan/plugin/bean/LAPK;

    return-object v0
.end method

.method public getCurrentPluginService()Landroid/app/Service;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/muzhiwan/plugin/bean/LServicePlugin;->CurrentPluginService:Landroid/app/Service;

    return-object v0
.end method

.method public getProxyParent()Landroid/app/Service;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/muzhiwan/plugin/bean/LServicePlugin;->proxyParent:Landroid/app/Service;

    return-object v0
.end method

.method public getTopServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/muzhiwan/plugin/bean/LServicePlugin;->topServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentPluginService(Landroid/app/Service;)V
    .locals 0
    .param p1, "currentPluginService"    # Landroid/app/Service;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/muzhiwan/plugin/bean/LServicePlugin;->CurrentPluginService:Landroid/app/Service;

    .line 59
    return-void
.end method

.method public setProxyParent(Landroid/app/Service;)V
    .locals 0
    .param p1, "proxyParent"    # Landroid/app/Service;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/muzhiwan/plugin/bean/LServicePlugin;->proxyParent:Landroid/app/Service;

    .line 45
    return-void
.end method

.method public setTopServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "topServiceName"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/muzhiwan/plugin/bean/LServicePlugin;->topServiceName:Ljava/lang/String;

    .line 75
    return-void
.end method
