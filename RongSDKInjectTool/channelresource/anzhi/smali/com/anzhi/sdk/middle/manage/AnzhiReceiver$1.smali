.class Lcom/anzhi/sdk/middle/manage/AnzhiReceiver$1;
.super Ljava/lang/Thread;
.source "AnzhiReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver$1;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;

    iput-object p2, p0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver$1;->val$context:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v7, -0x1

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 30
    :try_start_0
    iget-object v11, p0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "action":Ljava/lang/String;
    const-string v11, "Anzhi_sdk_lib"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Receive action: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string v11, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 33
    iget-object v10, p0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver$1;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;

    iget-object v11, p0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;->getPackageName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;->access$0(Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 34
    .local v9, "packageName":Ljava/lang/String;
    iget-object v10, p0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v11, "android.intent.extra.REPLACING"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 39
    .local v4, "isReplacing":Z
    if-nez v4, :cond_0

    .line 40
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v10

    iget-object v11, p0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10, v11, v9, v4}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->onPackageAdded(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 87
    .end local v0    # "action":Ljava/lang/String;
    .end local v4    # "isReplacing":Z
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 42
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v11, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 43
    iget-object v10, p0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver$1;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;

    iget-object v11, p0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;->getPackageName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;->access$0(Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 44
    .restart local v9    # "packageName":Ljava/lang/String;
    iget-object v10, p0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v11, "android.intent.extra.REPLACING"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 53
    .restart local v4    # "isReplacing":Z
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v10

    iget-object v11, p0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10, v11, v9, v4}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->onPackageRemove(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 54
    if-eqz v4, :cond_0

    .line 55
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v10

    iget-object v11, p0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10, v11, v9, v4}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->onPackageAdded(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    .end local v0    # "action":Ljava/lang/String;
    .end local v4    # "isReplacing":Z
    .end local v9    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 57
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v11, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 58
    iget-object v11, p0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver$1;->val$context:Landroid/content/Context;

    .line 59
    const-string v12, "connectivity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 58
    check-cast v5, Landroid/net/ConnectivityManager;

    .line 60
    .local v5, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    .line 61
    .local v6, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_3

    move v3, v10

    .line 62
    .local v3, "isConnected":Z
    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    .line 63
    .local v7, "netType":I
    :cond_4
    const-string v11, "Anzhi_sdk_lib"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Current network changed netType="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;->sConnected:Ljava/lang/Boolean;
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;->access$1()Ljava/lang/Boolean;

    move-result-object v11

    if-eqz v11, :cond_5

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;->sConnected:Ljava/lang/Boolean;
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;->access$1()Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_5
    if-nez v3, :cond_6

    .line 65
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v10}, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;->access$2(Ljava/lang/Boolean;)V

    .line 66
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v10

    iget-object v11, p0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10, v11}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->pauseAllDownload(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 67
    :cond_6
    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;->sConnected:Ljava/lang/Boolean;
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;->access$1()Ljava/lang/Boolean;

    move-result-object v11

    if-eqz v11, :cond_7

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;->sConnected:Ljava/lang/Boolean;
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;->access$1()Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_7

    sget v11, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;->sConnectingType:I

    if-eq v11, v7, :cond_0

    :cond_7
    if-eqz v3, :cond_0

    .line 68
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v11}, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;->access$2(Ljava/lang/Boolean;)V

    .line 69
    sput v7, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;->sConnectingType:I

    .line 70
    if-ne v7, v10, :cond_8

    .line 71
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v10

    iget-object v11, p0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10, v11}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->resumeAllDownload(Landroid/content/Context;)V

    .line 75
    :goto_1
    new-instance v2, Landroid/content/Intent;

    iget-object v10, p0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver$1;->val$context:Landroid/content/Context;

    const-class v11, Lcom/anzhi/sdk/middle/manage/PushService;

    invoke-direct {v2, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v2, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 73
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_8
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v10

    iget-object v11, p0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10, v11}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->pauseAllDownload(Landroid/content/Context;)V

    goto :goto_1

    .line 79
    .end local v3    # "isConnected":Z
    .end local v5    # "mConnectivityManager":Landroid/net/ConnectivityManager;
    .end local v6    # "netInfo":Landroid/net/NetworkInfo;
    .end local v7    # "netType":I
    :cond_9
    const-string v10, "com.usercenter.sdk.action.DELETE_SINGLE_INTENT_CLICK"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 80
    const-string v10, "com.usercenter.sdk.action.DELETE_SINGLE_INTENT_CLICK"

    invoke-static {v10}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;)V

    .line 81
    iget-object v10, p0, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v11, "notification_id"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 82
    .local v8, "notiId":I
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->cancelNotiId(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
