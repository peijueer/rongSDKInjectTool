.class public Lcom/muzhiwan/plugin/control/LPluginInstrument;
.super Landroid/app/Instrumentation;
.source "LPluginInstrument.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field instrumentRef:Lcom/muzhiwan/plugin/reflect/Reflect;

.field pluginIn:Landroid/app/Instrumentation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/muzhiwan/plugin/control/LPluginInstrument;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muzhiwan/plugin/control/LPluginInstrument;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Instrumentation;)V
    .locals 1
    .param p1, "pluginIn"    # Landroid/app/Instrumentation;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/muzhiwan/plugin/control/LPluginInstrument;->pluginIn:Landroid/app/Instrumentation;

    .line 39
    invoke-static {p1}, Lcom/muzhiwan/plugin/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v0

    iput-object v0, p0, Lcom/muzhiwan/plugin/control/LPluginInstrument;->instrumentRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    .line 40
    return-void
.end method

.method private activityNameOutPlugin(Ljava/lang/String;)Z
    .locals 4
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {}, Lcom/muzhiwan/sdk/core/InnerController;->getInstance()Lcom/muzhiwan/sdk/core/InnerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/muzhiwan/sdk/core/InnerController;->getOutActivityNamePlugins()Ljava/util/List;

    move-result-object v1

    .line 164
    .local v1, "outActivityNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "outActivityNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .restart local v1    # "outActivityNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string v2, "com.tencent.mm.plugin.base.stub.WXPayEntryActivity"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    .local v0, "outActivityName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    const/4 v2, 0x1

    .line 172
    .end local v0    # "outActivityName":Ljava/lang/String;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private packageNameOutPlugin(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {}, Lcom/muzhiwan/sdk/core/InnerController;->getInstance()Lcom/muzhiwan/sdk/core/InnerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/muzhiwan/sdk/core/InnerController;->getOutPackageNamePlugins()Ljava/util/List;

    move-result-object v1

    .line 150
    .local v1, "outPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "outPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .restart local v1    # "outPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string v2, "com.tencent.mm.plugin"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    const-string v2, "com.muzhiwan.market"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    .local v0, "outPackageName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    const/4 v2, 0x1

    .line 159
    .end local v0    # "outPackageName":Ljava/lang/String;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/LPluginInstrument;->pluginIn:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 126
    return-void
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/LPluginInstrument;->pluginIn:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 141
    return-void
.end method

.method public callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/LPluginInstrument;->pluginIn:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 131
    return-void
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/LPluginInstrument;->pluginIn:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 146
    return-void
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/LPluginInstrument;->pluginIn:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    .line 136
    return-void
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;
    .locals 7
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I

    .prologue
    .line 79
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 80
    .local v1, "componentName":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 81
    iget-object v2, p0, Lcom/muzhiwan/plugin/control/LPluginInstrument;->instrumentRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v3, "execStartActivity"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    const/4 v5, 0x4

    aput-object p5, v4, v5

    const/4 v5, 0x5

    .line 82
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 81
    invoke-virtual {v2, v3, v4}, Lcom/muzhiwan/plugin/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Lcom/muzhiwan/plugin/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Instrumentation$ActivityResult;

    .line 99
    :goto_0
    return-object v2

    .line 84
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "className":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/muzhiwan/plugin/control/LPluginInstrument;->packageNameOutPlugin(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/muzhiwan/plugin/control/LPluginInstrument;->activityNameOutPlugin(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    :cond_1
    :goto_1
    const-string v2, "MZW_LOG_TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/muzhiwan/plugin/control/LPluginInstrument;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Jump to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/muzhiwan/plugin/manager/LPluginDexManager;->finalApkPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v2, "plugin_dex_path"

    sget-object v3, Lcom/muzhiwan/plugin/manager/LPluginDexManager;->finalApkPath:Ljava/lang/String;

    invoke-virtual {p5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v2, "plugin_act_name"

    invoke-virtual {p5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object v2, p0, Lcom/muzhiwan/plugin/control/LPluginInstrument;->instrumentRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v3, "execStartActivity"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    const/4 v5, 0x4

    aput-object p5, v4, v5

    const/4 v5, 0x5

    .line 99
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 98
    invoke-virtual {v2, v3, v4}, Lcom/muzhiwan/plugin/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Lcom/muzhiwan/plugin/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Instrumentation$ActivityResult;

    goto :goto_0

    .line 88
    :cond_2
    const-class v2, Lcom/muzhiwan/plugin/LActivityProxy;

    invoke-virtual {p5, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 7
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 50
    .local v1, "componentName":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 51
    iget-object v2, p0, Lcom/muzhiwan/plugin/control/LPluginInstrument;->instrumentRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v3, "execStartActivity"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    const/4 v5, 0x4

    aput-object p5, v4, v5

    const/4 v5, 0x5

    .line 52
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    aput-object p7, v4, v5

    .line 51
    invoke-virtual {v2, v3, v4}, Lcom/muzhiwan/plugin/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lcom/muzhiwan/plugin/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Instrumentation$ActivityResult;

    .line 69
    :goto_0
    return-object v2

    .line 54
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "className":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/muzhiwan/plugin/control/LPluginInstrument;->packageNameOutPlugin(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/muzhiwan/plugin/control/LPluginInstrument;->activityNameOutPlugin(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61
    :cond_1
    :goto_1
    const-string v2, "MZW_LOG_TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/muzhiwan/plugin/control/LPluginInstrument;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Jump to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/muzhiwan/plugin/manager/LPluginDexManager;->finalApkPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v2, "plugin_dex_path"

    sget-object v3, Lcom/muzhiwan/plugin/manager/LPluginDexManager;->finalApkPath:Ljava/lang/String;

    invoke-virtual {p5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v2, "plugin_act_name"

    invoke-virtual {p5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v2, p0, Lcom/muzhiwan/plugin/control/LPluginInstrument;->instrumentRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v3, "execStartActivity"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    const/4 v5, 0x4

    aput-object p5, v4, v5

    const/4 v5, 0x5

    .line 69
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    aput-object p7, v4, v5

    .line 68
    invoke-virtual {v2, v3, v4}, Lcom/muzhiwan/plugin/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lcom/muzhiwan/plugin/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Instrumentation$ActivityResult;

    goto :goto_0

    .line 58
    :cond_2
    const-class v2, Lcom/muzhiwan/plugin/LActivityProxy;

    invoke-virtual {p5, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/LPluginInstrument;->pluginIn:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V

    .line 111
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/LPluginInstrument;->pluginIn:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->onDestroy()V

    .line 116
    return-void
.end method

.method public onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/LPluginInstrument;->pluginIn:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/LPluginInstrument;->pluginIn:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->onStart()V

    .line 106
    return-void
.end method
