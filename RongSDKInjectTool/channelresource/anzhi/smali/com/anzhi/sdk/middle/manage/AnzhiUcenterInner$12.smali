.class Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;
.super Ljava/lang/Object;
.source "AnzhiUcenterInner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->initInner(Landroid/app/Activity;Lcom/anzhi/sdk/middle/manage/CPInfo;Lcom/anzhi/sdk/middle/manage/GameCallBack;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$callBack:Lcom/anzhi/sdk/middle/manage/GameCallBack;

.field private final synthetic val$run:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;Landroid/app/Activity;Lcom/anzhi/sdk/middle/manage/GameCallBack;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    iput-object p2, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;->val$callBack:Lcom/anzhi/sdk/middle/manage/GameCallBack;

    iput-object p4, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;->val$run:Ljava/lang/Runnable;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 250
    iget-object v5, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # invokes: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->initPluginLog()V
    invoke-static {v5}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$1(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V

    .line 251
    iget-object v5, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    invoke-virtual {v5}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->loadPlugin()Z

    move-result v5

    if-nez v5, :cond_0

    .line 290
    :goto_0
    return-void

    .line 254
    :cond_0
    const/4 v3, 0x0

    .line 256
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$5(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 257
    iget-object v6, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    iget-object v6, v6, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v7, "com.anzhi.usercenter.plugin"

    invoke-virtual {v6, v7}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    .line 256
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 263
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x8

    if-le v5, v6, :cond_1

    if-eqz v3, :cond_1

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_1

    .line 264
    const-string v5, "Anzhi_sdk_lib"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "current plugin ver: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 266
    .local v2, "metaData":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 267
    const-string v5, "support_ver"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 268
    .local v4, "supportVer":I
    const-string v5, "Anzhi_sdk_lib"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "current plugin support_ver: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    if-eq v4, v10, :cond_1

    .line 270
    iget-object v5, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    iget-object v5, v5, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v6, "com.anzhi.usercenter.plugin"

    invoke-virtual {v5, v6}, Lcom/anzhi/plugin/loader/PluginManager;->delPluginFile(Ljava/lang/String;)Z

    move-result v0

    .line 271
    .local v0, "delOk":Z
    const-string v5, "Anzhi_sdk_lib"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u5f53\u524d\u6e38\u620f\u6240\u7528JAR\u5305\u517c\u5bb9\u7248\u672c\u53f7\u4e0e\u63d2\u4ef6\u4e0d\u7edf\u4e00!! delOk= "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Err7:current sdk ver is error!!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 258
    .end local v0    # "delOk":Z
    .end local v2    # "metaData":Landroid/os/Bundle;
    .end local v4    # "supportVer":I
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Anzhi_sdk_lib"

    const-string v6, ""

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    iget-object v5, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    iget-object v5, v5, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v6, "com.anzhi.usercenter.plugin"

    invoke-virtual {v5, v6}, Lcom/anzhi/plugin/loader/PluginManager;->delPluginFile(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 277
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v5, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    const-string v6, "setAppKey"

    new-array v7, v10, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v11

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mCpInfo:Lcom/anzhi/sdk/middle/manage/CPInfo;
    invoke-static {v9}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$3(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Lcom/anzhi/sdk/middle/manage/CPInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/anzhi/sdk/middle/manage/CPInfo;->getAppKey()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v5, v6, v7, v8}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v5, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    const-string v6, "setAppSecret"

    new-array v7, v10, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v11

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mCpInfo:Lcom/anzhi/sdk/middle/manage/CPInfo;
    invoke-static {v9}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$3(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Lcom/anzhi/sdk/middle/manage/CPInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/anzhi/sdk/middle/manage/CPInfo;->getSecret()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v5, v6, v7, v8}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v5, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    const-string v6, "setJarVersionCode"

    new-array v7, v10, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v11

    new-array v8, v10, [Ljava/lang/Object;

    const/16 v9, 0xfa3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v5, v6, v7, v8}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v5, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    const-string v6, "setJarVersionName"

    new-array v7, v10, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v11

    new-array v8, v10, [Ljava/lang/Object;

    const-string v9, "4.0.3"

    aput-object v9, v8, v11

    invoke-virtual {v5, v6, v7, v8}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v5, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    const-string v6, "pluginInit"

    invoke-virtual {v5, v6, v12, v12}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-boolean v5, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->isDebugable:Z

    if-nez v5, :cond_2

    .line 283
    iget-object v5, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # invokes: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->checkPluginValid()V
    invoke-static {v5}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$6(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V

    .line 285
    :cond_2
    iget-object v5, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # invokes: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->startPushService()V
    invoke-static {v5}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$2(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V

    .line 286
    iget-object v5, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # invokes: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->submitException()V
    invoke-static {v5}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$7(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V

    .line 287
    iget-object v5, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    iget-object v6, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;->val$activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    # invokes: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->backgroundTask(Landroid/content/Context;)V
    invoke-static {v5, v6}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$8(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;Landroid/content/Context;)V

    .line 288
    iget-object v5, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;->val$callBack:Lcom/anzhi/sdk/middle/manage/GameCallBack;

    const/4 v6, 0x3

    invoke-interface {v5, v6, v12}, Lcom/anzhi/sdk/middle/manage/GameCallBack;->callBack(ILjava/lang/String;)V

    .line 289
    iget-object v5, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;->val$run:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0
.end method
