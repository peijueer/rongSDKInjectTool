.class public Lcom/muzhiwan/plugin/LPluginOpener;
.super Ljava/lang/Object;
.source "LPluginOpener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginPath"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "conn"    # Landroid/content/ServiceConnection;
    .param p5, "flags"    # I

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/muzhiwan/plugin/service/LProxyService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v0, "i":Landroid/content/Intent;
    sput-object p1, Lcom/muzhiwan/plugin/service/LProxyService;->SERVICE_APK_PATH:Ljava/lang/String;

    .line 106
    sput-object p2, Lcom/muzhiwan/plugin/service/LProxyService;->SERVICE_CLASS_NAME:Ljava/lang/String;

    .line 107
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0, p4, p5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 110
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginPath"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/muzhiwan/plugin/LActivityProxy;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v1, "i":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "plugin_dex_path"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v2, "no_activity_proxy_now"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginPath"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/muzhiwan/plugin/LActivityProxy;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "plugin_dex_path"

    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "no_activity_proxy_now"

    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method public static startPlugin(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginPath"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/muzhiwan/plugin/LActivityProxy;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .local v1, "i":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "plugin_dex_path"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 27
    return-void
.end method

.method public static startPlugin(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginPath"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/muzhiwan/plugin/LActivityProxy;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "plugin_dex_path"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    return-void
.end method

.method public static startService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginPath"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/muzhiwan/plugin/service/LProxyService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v0, "i":Landroid/content/Intent;
    sput-object p1, Lcom/muzhiwan/plugin/service/LProxyService;->SERVICE_APK_PATH:Ljava/lang/String;

    .line 88
    sput-object p2, Lcom/muzhiwan/plugin/service/LProxyService;->SERVICE_CLASS_NAME:Ljava/lang/String;

    .line 89
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 90
    return-void
.end method

.method public static startService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginPath"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/muzhiwan/plugin/service/LProxyService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 134
    sput-object p1, Lcom/muzhiwan/plugin/service/LProxyService;->SERVICE_APK_PATH:Ljava/lang/String;

    .line 135
    sput-object p2, Lcom/muzhiwan/plugin/service/LProxyService;->SERVICE_CLASS_NAME:Ljava/lang/String;

    .line 136
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 137
    return-void
.end method

.method public static unBindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 120
    return-void
.end method
