.class public Lcom/muzhiwan/plugin/control/PluginActivityControl;
.super Ljava/lang/Object;
.source "PluginActivityControl.java"

# interfaces
.implements Lcom/muzhiwan/plugin/control/PluginActivityCallback;


# instance fields
.field app:Landroid/app/Application;

.field i:Landroid/app/Instrumentation;

.field plugin:Landroid/app/Activity;

.field pluginRef:Lcom/muzhiwan/plugin/reflect/Reflect;

.field proxy:Landroid/app/Activity;

.field proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/app/Activity;)V
    .locals 1
    .param p1, "proxy"    # Landroid/app/Activity;
    .param p2, "plugin"    # Landroid/app/Activity;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/muzhiwan/plugin/control/PluginActivityControl;-><init>(Landroid/app/Activity;Landroid/app/Activity;Landroid/app/Application;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Activity;Landroid/app/Application;)V
    .locals 1
    .param p1, "proxy"    # Landroid/app/Activity;
    .param p2, "plugin"    # Landroid/app/Activity;
    .param p3, "app"    # Landroid/app/Application;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 53
    iput-object p2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->plugin:Landroid/app/Activity;

    .line 54
    iput-object p3, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->app:Landroid/app/Application;

    .line 56
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->i:Landroid/app/Instrumentation;

    .line 59
    invoke-static {p1}, Lcom/muzhiwan/plugin/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v0

    iput-object v0, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    .line 60
    invoke-static {p2}, Lcom/muzhiwan/plugin/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v0

    iput-object v0, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->pluginRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    .line 61
    return-void
.end method


# virtual methods
.method public callDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->plugin:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method public callOnBackPressed()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->plugin:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 427
    return-void
.end method

.method public callOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->plugin:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 456
    return-void
.end method

.method public callOnCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "saveInstance"    # Landroid/os/Bundle;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->i:Landroid/app/Instrumentation;

    iget-object v1, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->plugin:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 328
    return-void
.end method

.method public callOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->plugin:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public callOnCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->plugin:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public callOnDestroy()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->i:Landroid/app/Instrumentation;

    iget-object v1, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->plugin:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 361
    return-void
.end method

.method public callOnDetachedFromWindow()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->plugin:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 468
    return-void
.end method

.method public callOnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->plugin:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public callOnNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->i:Landroid/app/Instrumentation;

    iget-object v1, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->plugin:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 489
    return-void
.end method

.method public callOnPause()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->i:Landroid/app/Instrumentation;

    iget-object v1, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->plugin:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 416
    return-void
.end method

.method public callOnPostResume()V
    .locals 2

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/muzhiwan/plugin/control/PluginActivityControl;->getPluginRef()Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v0

    const-string v1, "onPostResume"

    invoke-virtual {v0, v1}, Lcom/muzhiwan/plugin/reflect/Reflect;->call(Ljava/lang/String;)Lcom/muzhiwan/plugin/reflect/Reflect;

    .line 462
    return-void
.end method

.method public callOnRestart()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->i:Landroid/app/Instrumentation;

    iget-object v1, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->plugin:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    .line 383
    return-void
.end method

.method public callOnRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/muzhiwan/plugin/control/PluginActivityControl;->getPluginRef()Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v0

    const-string v1, "onRestoreInstanceState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/muzhiwan/plugin/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    .line 405
    return-void
.end method

.method public callOnResume()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->i:Landroid/app/Instrumentation;

    iget-object v1, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->plugin:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 350
    return-void
.end method

.method public callOnSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/muzhiwan/plugin/control/PluginActivityControl;->getPluginRef()Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v0

    const-string v1, "onSaveInstanceState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/muzhiwan/plugin/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    .line 394
    return-void
.end method

.method public callOnStart()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->i:Landroid/app/Instrumentation;

    iget-object v1, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->plugin:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    .line 339
    return-void
.end method

.method public callOnStop()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->i:Landroid/app/Instrumentation;

    iget-object v1, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->plugin:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    .line 372
    return-void
.end method

.method public dispatchProxyToPlugin()V
    .locals 8

    .prologue
    const/16 v4, 0xb

    .line 65
    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->plugin:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->plugin:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v3, "mInstrumentation"

    invoke-virtual {v2, v3}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation;

    .line 70
    .local v1, "instrumentation":Landroid/app/Instrumentation;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v4, :cond_4

    .line 71
    iget-object v3, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->pluginRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v4, "attach"

    const/16 v2, 0xc

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    aput-object v6, v5, v2

    const/4 v2, 0x1

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mMainThread"

    .line 77
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x2

    new-instance v6, Lcom/muzhiwan/plugin/control/LPluginInstrument;

    invoke-direct {v6, v1}, Lcom/muzhiwan/plugin/control/LPluginInstrument;-><init>(Landroid/app/Instrumentation;)V

    aput-object v6, v5, v2

    const/4 v2, 0x3

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mToken"

    .line 81
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x4

    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->app:Landroid/app/Application;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 83
    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    :goto_1
    aput-object v2, v5, v6

    const/4 v2, 0x5

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 85
    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x6

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mActivityInfo"

    .line 87
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x7

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 89
    invoke-virtual {v6}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0x8

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 91
    invoke-virtual {v6}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0x9

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mEmbeddedID"

    .line 93
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xa

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 96
    invoke-virtual {v6}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xb

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mCurrentConfig"

    .line 98
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    .line 71
    invoke-virtual {v3, v4, v5}, Lcom/muzhiwan/plugin/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    .line 258
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->plugin:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->plugin:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 259
    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->pluginRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v3, "mWindow"

    iget-object v4, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/muzhiwan/plugin/reflect/Reflect;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    .line 260
    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/muzhiwan/plugin/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v2

    const-string v3, "setOuterContext"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->plugin:Landroid/app/Activity;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/muzhiwan/plugin/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;
    :try_end_0
    .catch Lcom/muzhiwan/plugin/reflect/ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 261
    .end local v1    # "instrumentation":Landroid/app/Instrumentation;
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Lcom/muzhiwan/plugin/reflect/ReflectException;
    invoke-virtual {v0}, Lcom/muzhiwan/plugin/reflect/ReflectException;->printStackTrace()V

    goto/16 :goto_0

    .line 83
    .end local v0    # "e":Lcom/muzhiwan/plugin/reflect/ReflectException;
    .restart local v1    # "instrumentation":Landroid/app/Instrumentation;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->app:Landroid/app/Application;

    goto/16 :goto_1

    .line 100
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_7

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_7

    .line 101
    iget-object v3, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->pluginRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v4, "attach"

    const/16 v2, 0xd

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    aput-object v6, v5, v2

    const/4 v2, 0x1

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mMainThread"

    .line 107
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x2

    new-instance v6, Lcom/muzhiwan/plugin/control/LPluginInstrument;

    invoke-direct {v6, v1}, Lcom/muzhiwan/plugin/control/LPluginInstrument;-><init>(Landroid/app/Instrumentation;)V

    aput-object v6, v5, v2

    const/4 v2, 0x3

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mToken"

    .line 111
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x4

    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mEmbeddedID"

    .line 113
    invoke-virtual {v2, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    aput-object v2, v5, v6

    const/4 v6, 0x5

    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->app:Landroid/app/Application;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 115
    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    :goto_4
    aput-object v2, v5, v6

    const/4 v2, 0x6

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 117
    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x7

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mActivityInfo"

    .line 119
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0x8

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 121
    invoke-virtual {v6}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0x9

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 123
    invoke-virtual {v6}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xa

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mEmbeddedID"

    .line 125
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xb

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 128
    invoke-virtual {v6}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xc

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mCurrentConfig"

    .line 130
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    .line 101
    invoke-virtual {v3, v4, v5}, Lcom/muzhiwan/plugin/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    goto/16 :goto_2

    .line 113
    :cond_5
    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mEmbeddedID"

    invoke-virtual {v2, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 115
    :cond_6
    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->app:Landroid/app/Application;

    goto :goto_4

    .line 132
    :cond_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_a

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-ge v2, v3, :cond_a

    .line 133
    iget-object v3, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->pluginRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v4, "attach"

    const/16 v2, 0xe

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    aput-object v6, v5, v2

    const/4 v2, 0x1

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mMainThread"

    .line 139
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x2

    new-instance v6, Lcom/muzhiwan/plugin/control/LPluginInstrument;

    invoke-direct {v6, v1}, Lcom/muzhiwan/plugin/control/LPluginInstrument;-><init>(Landroid/app/Instrumentation;)V

    aput-object v6, v5, v2

    const/4 v2, 0x3

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mToken"

    .line 143
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x4

    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mEmbeddedID"

    .line 145
    invoke-virtual {v2, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_5
    aput-object v2, v5, v6

    const/4 v6, 0x5

    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->app:Landroid/app/Application;

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 147
    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    :goto_6
    aput-object v2, v5, v6

    const/4 v2, 0x6

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 149
    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x7

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mActivityInfo"

    .line 151
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0x8

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 153
    invoke-virtual {v6}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0x9

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 155
    invoke-virtual {v6}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xa

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mEmbeddedID"

    .line 157
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xb

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 160
    invoke-virtual {v6}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xc

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mCurrentConfig"

    .line 162
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xd

    const/4 v6, 0x0

    aput-object v6, v5, v2

    .line 133
    invoke-virtual {v3, v4, v5}, Lcom/muzhiwan/plugin/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    goto/16 :goto_2

    .line 145
    :cond_8
    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mEmbeddedID"

    invoke-virtual {v2, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_5

    .line 147
    :cond_9
    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->app:Landroid/app/Application;

    goto :goto_6

    .line 163
    :cond_a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_d

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_d

    .line 164
    iget-object v3, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->pluginRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v4, "attach"

    const/16 v2, 0xf

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    aput-object v6, v5, v2

    const/4 v2, 0x1

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mMainThread"

    .line 170
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x2

    new-instance v6, Lcom/muzhiwan/plugin/control/LPluginInstrument;

    invoke-direct {v6, v1}, Lcom/muzhiwan/plugin/control/LPluginInstrument;-><init>(Landroid/app/Instrumentation;)V

    aput-object v6, v5, v2

    const/4 v2, 0x3

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mToken"

    .line 174
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x4

    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mEmbeddedID"

    .line 176
    invoke-virtual {v2, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_7
    aput-object v2, v5, v6

    const/4 v6, 0x5

    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->app:Landroid/app/Application;

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 178
    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    :goto_8
    aput-object v2, v5, v6

    const/4 v2, 0x6

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 180
    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x7

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mActivityInfo"

    .line 182
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0x8

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 184
    invoke-virtual {v6}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0x9

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 186
    invoke-virtual {v6}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xa

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mEmbeddedID"

    .line 188
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xb

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 191
    invoke-virtual {v6}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xc

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mCurrentConfig"

    .line 193
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xd

    const/4 v6, 0x0

    aput-object v6, v5, v2

    const/16 v2, 0xe

    const/4 v6, 0x0

    aput-object v6, v5, v2

    .line 164
    invoke-virtual {v3, v4, v5}, Lcom/muzhiwan/plugin/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    goto/16 :goto_2

    .line 176
    :cond_b
    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mEmbeddedID"

    invoke-virtual {v2, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_7

    .line 178
    :cond_c
    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->app:Landroid/app/Application;

    goto :goto_8

    .line 194
    :cond_d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_10

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_10

    .line 195
    iget-object v3, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->pluginRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v4, "attach"

    const/16 v2, 0x10

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    aput-object v6, v5, v2

    const/4 v2, 0x1

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mMainThread"

    .line 201
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x2

    new-instance v6, Lcom/muzhiwan/plugin/control/LPluginInstrument;

    invoke-direct {v6, v1}, Lcom/muzhiwan/plugin/control/LPluginInstrument;-><init>(Landroid/app/Instrumentation;)V

    aput-object v6, v5, v2

    const/4 v2, 0x3

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mToken"

    .line 205
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x4

    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mIdent"

    .line 207
    invoke-virtual {v2, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_e

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_9
    aput-object v2, v5, v6

    const/4 v6, 0x5

    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->app:Landroid/app/Application;

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 209
    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    :goto_a
    aput-object v2, v5, v6

    const/4 v2, 0x6

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 211
    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x7

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mActivityInfo"

    .line 213
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0x8

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 215
    invoke-virtual {v6}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0x9

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 217
    invoke-virtual {v6}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xa

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mEmbeddedID"

    .line 219
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xb

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 222
    invoke-virtual {v6}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xc

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mCurrentConfig"

    .line 224
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xd

    const/4 v6, 0x0

    aput-object v6, v5, v2

    const/16 v2, 0xe

    const/4 v6, 0x0

    aput-object v6, v5, v2

    const/16 v2, 0xf

    const/4 v6, 0x0

    aput-object v6, v5, v2

    .line 195
    invoke-virtual {v3, v4, v5}, Lcom/muzhiwan/plugin/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    goto/16 :goto_2

    .line 207
    :cond_e
    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mIdent"

    invoke-virtual {v2, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9

    .line 209
    :cond_f
    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->app:Landroid/app/Application;

    goto :goto_a

    .line 225
    :cond_10
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2

    .line 226
    iget-object v3, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->pluginRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v4, "attach"

    const/16 v2, 0x11

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    aput-object v6, v5, v2

    const/4 v2, 0x1

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mMainThread"

    .line 232
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x2

    new-instance v6, Lcom/muzhiwan/plugin/control/LPluginInstrument;

    invoke-direct {v6, v1}, Lcom/muzhiwan/plugin/control/LPluginInstrument;-><init>(Landroid/app/Instrumentation;)V

    aput-object v6, v5, v2

    const/4 v2, 0x3

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mToken"

    .line 236
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x4

    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mIdent"

    .line 238
    invoke-virtual {v2, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_11

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_b
    aput-object v2, v5, v6

    const/4 v6, 0x5

    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->app:Landroid/app/Application;

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 240
    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    :goto_c
    aput-object v2, v5, v6

    const/4 v2, 0x6

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 242
    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x7

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mActivityInfo"

    .line 244
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0x8

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 246
    invoke-virtual {v6}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0x9

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 248
    invoke-virtual {v6}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xa

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mEmbeddedID"

    .line 250
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xb

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 253
    invoke-virtual {v6}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xc

    iget-object v6, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mCurrentConfig"

    .line 255
    invoke-virtual {v6, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xd

    const/4 v6, 0x0

    aput-object v6, v5, v2

    const/16 v2, 0xe

    const/4 v6, 0x0

    aput-object v6, v5, v2

    const/16 v2, 0xf

    const/4 v6, 0x0

    aput-object v6, v5, v2

    const/16 v2, 0x10

    const/4 v6, 0x0

    aput-object v6, v5, v2

    .line 226
    invoke-virtual {v3, v4, v5}, Lcom/muzhiwan/plugin/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    goto/16 :goto_2

    .line 238
    :cond_11
    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    const-string v7, "mIdent"

    invoke-virtual {v2, v7}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b

    .line 240
    :cond_12
    iget-object v2, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->app:Landroid/app/Application;
    :try_end_1
    .catch Lcom/muzhiwan/plugin/reflect/ReflectException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c
.end method

.method public getPlugin()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->plugin:Landroid/app/Activity;

    return-object v0
.end method

.method public getPluginRef()Lcom/muzhiwan/plugin/reflect/Reflect;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->pluginRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    return-object v0
.end method

.method public getProxy()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    return-object v0
.end method

.method public getProxyRef()Lcom/muzhiwan/plugin/reflect/Reflect;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    return-object v0
.end method

.method public setPlugin(Landroid/app/Activity;)V
    .locals 1
    .param p1, "plugin"    # Landroid/app/Activity;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->plugin:Landroid/app/Activity;

    .line 281
    invoke-static {p1}, Lcom/muzhiwan/plugin/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v0

    iput-object v0, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    .line 282
    return-void
.end method

.method public setProxy(Landroid/app/Activity;)V
    .locals 1
    .param p1, "proxy"    # Landroid/app/Activity;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxy:Landroid/app/Activity;

    .line 300
    invoke-static {p1}, Lcom/muzhiwan/plugin/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v0

    iput-object v0, p0, Lcom/muzhiwan/plugin/control/PluginActivityControl;->proxyRef:Lcom/muzhiwan/plugin/reflect/Reflect;

    .line 301
    return-void
.end method
