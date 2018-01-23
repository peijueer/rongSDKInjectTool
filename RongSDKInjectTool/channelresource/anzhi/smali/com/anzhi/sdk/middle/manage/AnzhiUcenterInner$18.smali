.class Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$18;
.super Ljava/lang/Thread;
.source "AnzhiUcenterInner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->checkPluginValid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;


# direct methods
.method constructor <init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$18;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    .line 624
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 629
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$18;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$5(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 630
    .local v17, "manager":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$18;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    iget-object v3, v3, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v4, "com.anzhi.usercenter.plugin"

    invoke-virtual {v3, v4}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 631
    const/4 v4, 0x0

    .line 630
    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    .line 632
    .local v18, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v5, -0x1

    .line 633
    .local v5, "versionCode":I
    const/4 v6, 0x0

    .line 634
    .local v6, "md5Str":Ljava/lang/String;
    if-eqz v18, :cond_0

    .line 635
    move-object/from16 v0, v18

    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 636
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$18;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    iget-object v4, v4, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v7, "com.anzhi.usercenter.plugin"

    invoke-virtual {v4, v7}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/anzhi/sdk/middle/util/MD5;->encodeToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    .line 637
    const-string v3, "Anzhi_sdk_lib"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "local plugin version code="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", md5="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_0
    if-nez v6, :cond_2

    .line 660
    .end local v5    # "versionCode":I
    .end local v6    # "md5Str":Ljava/lang/String;
    .end local v17    # "manager":Landroid/content/pm/PackageManager;
    .end local v18    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    return-void

    .line 643
    .restart local v5    # "versionCode":I
    .restart local v6    # "md5Str":Ljava/lang/String;
    .restart local v17    # "manager":Landroid/content/pm/PackageManager;
    .restart local v18    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    new-instance v2, Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$18;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$5(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Landroid/content/Context;

    move-result-object v3

    .line 644
    const/16 v4, 0xfa3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 643
    invoke-direct/range {v2 .. v7}, Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 645
    .local v2, "checkProtocol":Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;
    invoke-virtual {v2}, Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;->request()I

    move-result v15

    .line 646
    .local v15, "code":I
    invoke-virtual {v2}, Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;->getData()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    .line 648
    .local v19, "valid":Ljava/lang/Boolean;
    const/16 v3, 0xc8

    if-ne v15, v3, :cond_1

    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 649
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$18;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$11(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;Z)V

    .line 650
    const-string v3, "Anzhi_sdk_lib"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Plugin md5 is invalid!!, MD5="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    new-instance v7, Lcom/anzhi/sdk/middle/protocol/SubmitPluginCheckStateProtocol;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$18;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$5(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Landroid/content/Context;

    move-result-object v8

    const/16 v9, 0xfa3

    .line 652
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x2

    move v10, v5

    move-object v11, v6

    .line 651
    invoke-direct/range {v7 .. v14}, Lcom/anzhi/sdk/middle/protocol/SubmitPluginCheckStateProtocol;-><init>(Landroid/content/Context;IILjava/lang/String;ILjava/lang/String;I)V

    .line 652
    invoke-virtual {v7}, Lcom/anzhi/sdk/middle/protocol/SubmitPluginCheckStateProtocol;->request()I

    .line 653
    new-instance v3, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$18;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$5(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/Exception;

    .line 654
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Plugin md5 is invalid!!! md5="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 653
    invoke-virtual {v3, v4, v7}, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->handleException(Ljava/lang/Throwable;Z)V

    .line 655
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$18;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$5(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/anzhi/plugin/loader/PluginManager;->getInstance(Landroid/content/Context;)Lcom/anzhi/plugin/loader/PluginManager;

    move-result-object v3

    const-string v4, "com.anzhi.usercenter.plugin"

    invoke-virtual {v3, v4}, Lcom/anzhi/plugin/loader/PluginManager;->delPluginFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 657
    .end local v2    # "checkProtocol":Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;
    .end local v5    # "versionCode":I
    .end local v6    # "md5Str":Ljava/lang/String;
    .end local v15    # "code":I
    .end local v17    # "manager":Landroid/content/pm/PackageManager;
    .end local v18    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v19    # "valid":Ljava/lang/Boolean;
    :catch_0
    move-exception v16

    .line 658
    .local v16, "e":Ljava/lang/Exception;
    const-string v3, "Anzhi_sdk_lib"

    const-string v4, ""

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
