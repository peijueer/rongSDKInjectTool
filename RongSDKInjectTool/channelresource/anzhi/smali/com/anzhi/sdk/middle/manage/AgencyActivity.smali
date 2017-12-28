.class public Lcom/anzhi/sdk/middle/manage/AgencyActivity;
.super Landroid/app/Activity;
.source "AgencyActivity.java"

# interfaces
.implements Lcom/arcsoft/hpay100/HPaySdkCallback;


# static fields
.field public static final PAY_ALI_SDK:I = 0x1

.field public static final PAY_CANCLE:I = 0x3

.field public static final PAY_CARD:I = 0x4

.field public static final PAY_FAIL:I = 0x2

.field public static final PAY_MQPAY:I = 0x5

.field public static final PAY_SUCCESS:I = 0x1

.field public static final PAY_UNIONPAY_SDK:I = 0x2

.field public static final PAY_WAITTING:I = 0x4

.field public static final PAY_WEIXIN_SDK:I = 0x3

.field public static final PLUGIN_PKG_NAME:Ljava/lang/String; = "com.anzhi.usercenter.plugin"

.field private static RESULT_CODE:Ljava/lang/String;

.field private static RESULT_DESC:Ljava/lang/String;


# instance fields
.field public final PAY_ALI_V2:I

.field public final PAY_MM_ALI:I

.field public final PAY_YOOYE:I

.field private mHandler:Landroid/os/Handler;

.field private mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private rootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 478
    const-string v0, "RESULT_CODE"

    sput-object v0, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->RESULT_CODE:Ljava/lang/String;

    .line 479
    const-string v0, "RESULT_DESC"

    sput-object v0, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->RESULT_DESC:Ljava/lang/String;

    .line 483
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    const/4 v0, 0x6

    iput v0, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->PAY_YOOYE:I

    .line 83
    const/4 v0, 0x7

    iput v0, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->PAY_MM_ALI:I

    .line 87
    const/16 v0, 0x8

    iput v0, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->PAY_ALI_V2:I

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->mHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/anzhi/sdk/middle/manage/AgencyActivity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->invokePluginMethod(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1(Lcom/anzhi/sdk/middle/manage/AgencyActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private invokePluginMethod(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 159
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v1

    const-string v2, "setActivity"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Landroid/app/Activity;

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p0, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v1

    const-string v2, "setHandler"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Landroid/os/Handler;

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->mHandler:Landroid/os/Handler;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v1

    const-string v2, "onCreate"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v1

    const-string v2, "getRootView"

    invoke-virtual {v1, v2, v8, v8}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->rootView:Landroid/view/View;

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->rootView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->setPluginActivity(Landroid/app/Activity;)V

    .line 169
    invoke-virtual {p0}, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 170
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public callback(IILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "resultCode"    # I
    .param p3, "result"    # Ljava/lang/String;
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 414
    const-string v0, "Anzhi_sdk_lib"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callback game: type= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getCallBackInner()Lcom/anzhi/sdk/middle/manage/GameCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getCallBackInner()Lcom/anzhi/sdk/middle/manage/GameCallBack;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/anzhi/sdk/middle/manage/GameCallBack;->callBack(ILjava/lang/String;)V

    .line 418
    :cond_0
    return-void
.end method

.method public callback(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "result"    # Ljava/lang/String;
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 426
    const-string v0, "Anzhi_sdk_lib"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callback game: type= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getCallBackInner()Lcom/anzhi/sdk/middle/manage/GameCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getCallBackInner()Lcom/anzhi/sdk/middle/manage/GameCallBack;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/anzhi/sdk/middle/manage/GameCallBack;->callBack(ILjava/lang/String;)V

    .line 430
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 375
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v2

    iget-object v2, v2, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v3, "com.anzhi.usercenter.plugin"

    invoke-virtual {v2, v3}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 376
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 383
    :cond_0
    :goto_0
    return v1

    .line 378
    :cond_1
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v2

    const-string v3, "dispatchKeyEvent"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/view/KeyEvent;

    aput-object v5, v4, v6

    .line 379
    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v6

    .line 378
    invoke-virtual {v2, v3, v4, v5}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 380
    .local v0, "isDisPatchKeyEvent":Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 383
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 388
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v2

    iget-object v2, v2, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v3, "com.anzhi.usercenter.plugin"

    invoke-virtual {v2, v3}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 389
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 391
    :cond_0
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v2

    const-string v3, "dispatchTouchEvent"

    .line 392
    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/view/MotionEvent;

    aput-object v5, v4, v6

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v6

    .line 391
    invoke-virtual {v2, v3, v4, v5}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 393
    .local v0, "isDisPatchKeyEvent":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 396
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p1, "obj"    # Ljava/lang/Class;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 455
    if-nez p1, :cond_1

    move-object v2, v3

    .line 475
    :cond_0
    :goto_0
    return-object v2

    .line 458
    :cond_1
    const/4 v2, 0x0

    .line 460
    .local v2, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 464
    :catch_1
    move-exception v1

    .line 465
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v2, v3

    .line 466
    goto :goto_0

    .line 468
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 469
    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 401
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    const-string v1, "onActivityResult"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    const-class v3, Landroid/content/Intent;

    aput-object v3, v2, v7

    .line 405
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object p3, v3, v7

    .line 404
    invoke-virtual {v0, v1, v2, v3}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 366
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 367
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    const-string v1, "onAttachedToWindow"

    invoke-virtual {v0, v1, v2, v2}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 270
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 271
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    const-string v1, "onConfigurationChanged"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/res/Configuration;

    aput-object v3, v2, v4

    .line 275
    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 274
    invoke-virtual {v0, v1, v2, v3}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0, v7}, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->requestWindowFeature(I)Z

    .line 103
    invoke-virtual {p0}, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 104
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "ISFORMICON"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 105
    .local v2, "isformIcon":Z
    if-eqz v2, :cond_0

    .line 106
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v4

    invoke-virtual {p0}, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->initPluginManager(Landroid/content/Context;)V

    .line 107
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 108
    iget-object v4, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 109
    iget-object v4, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 110
    iget-object v4, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 111
    invoke-static {v7}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v4, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 112
    iget-object v4, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v5, Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;

    invoke-direct {v5, p0, p1}, Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;-><init>(Lcom/anzhi/sdk/middle/manage/AgencyActivity;Landroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/anzhi/sdk/middle/manage/PushService;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->stopService(Landroid/content/Intent;)Z

    .line 154
    .end local v0    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-static {p0}, Lcom/anzhi/plugin/loader/PluginManager;->getInstance(Landroid/content/Context;)Lcom/anzhi/plugin/loader/PluginManager;

    move-result-object v4

    const-string v5, "com.anzhi.usercenter.plugin"

    invoke-virtual {v4, v5}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->finish()V

    .line 145
    :cond_1
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->isPluginInValid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_SWITCH_ACTIVITY"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "page":Ljava/lang/String;
    const-string v4, "EXITGAME_ACTIVITY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 148
    const-string v4, "\u60a8\u6240\u7528\u7684\u652f\u4ed8\u63d2\u4ef6\u4e0d\u5408\u6cd5\uff01\uff01"

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 149
    invoke-virtual {p0}, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->finish()V

    .line 152
    .end local v3    # "page":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1}, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->invokePluginMethod(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 316
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 317
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1, v2, v2}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 331
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v2

    iget-object v2, v2, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v3, "com.anzhi.usercenter.plugin"

    invoke-virtual {v2, v3}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 332
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 334
    :cond_0
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v2

    const-string v3, "onKeyDown"

    new-array v4, v6, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    const-class v5, Landroid/view/KeyEvent;

    aput-object v5, v4, v1

    .line 335
    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object p2, v5, v1

    .line 334
    invoke-virtual {v2, v3, v4, v5}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 336
    .local v0, "isKeyDown":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 344
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v2

    iget-object v2, v2, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v3, "com.anzhi.usercenter.plugin"

    invoke-virtual {v2, v3}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 345
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 347
    :cond_0
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v2

    const-string v3, "onKeyUp"

    new-array v4, v6, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    const-class v5, Landroid/view/KeyEvent;

    aput-object v5, v4, v1

    .line 348
    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object p2, v5, v1

    .line 347
    invoke-virtual {v2, v3, v4, v5}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 349
    .local v0, "isOnKeyUp":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 324
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    const-string v1, "onMultiWindowModeChanged"

    invoke-virtual {v0, v1, v2, v2}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 261
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 262
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    const-string v1, "onNewIntent"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Intent;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 299
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    const-string v1, "onPause"

    invoke-virtual {v0, v1, v2, v2}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 289
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 290
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    const-string v1, "onResume"

    invoke-virtual {v0, v1, v2, v2}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 280
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 281
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    const-string v1, "onStart"

    invoke-virtual {v0, v1, v2, v2}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 308
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    const-string v1, "onStop"

    invoke-virtual {v0, v1, v2, v2}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 357
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 358
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    const-string v1, "onWindowFocusChanged"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public pay(ILjava/lang/String;)V
    .locals 24
    .param p1, "payType"    # I
    .param p2, "data"    # Ljava/lang/String;
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 175
    packed-switch p1, :pswitch_data_0

    .line 257
    :goto_0
    :pswitch_0
    return-void

    .line 190
    :pswitch_1
    const-class v5, Lcom/unionpay/uppay/PayActivity;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v9, "00"

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-static/range {v4 .. v9}, Lcom/unionpay/UPPayAssistEx;->startPayByJAR(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :pswitch_2
    new-instance v23, Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;

    invoke-direct/range {v23 .. v23}, Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;-><init>()V

    .line 195
    .local v23, "weChatPlugin":Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;
    invoke-virtual/range {v23 .. v24}, Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;->init(Landroid/content/Context;)Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;

    .line 196
    new-instance v4, Lcom/anzhi/sdk/middle/manage/MyLoading;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/anzhi/sdk/middle/manage/MyLoading;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;->setCustomDialog(Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;)Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;->setCallResultActivity(Landroid/app/Activity;)Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;

    move-result-object v4

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;->setShowConfirmDialog(Z)Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;

    move-result-object v4

    .line 197
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;->pay(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    .end local v23    # "weChatPlugin":Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;
    :pswitch_3
    :try_start_0
    invoke-static {}, Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;->getInstance()Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;->init(Landroid/content/Context;)Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;

    .line 206
    new-instance v22, Landroid/app/ProgressDialog;

    const/4 v4, 0x3

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 207
    .local v22, "progressDialog":Landroid/app/ProgressDialog;
    invoke-virtual/range {v22 .. v22}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/view/Window;->requestFeature(I)Z

    .line 208
    const-string v4, "\u652f\u4ed8\u5b89\u5168\u73af\u5883\u626b\u63cf"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 209
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 210
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 211
    invoke-virtual/range {v22 .. v22}, Landroid/app/ProgressDialog;->show()V

    .line 212
    invoke-static {}, Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;->getInstance()Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;->setPayLoading(Landroid/app/ProgressDialog;)Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;

    .line 213
    invoke-static {}, Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;->getInstance()Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;

    move-result-object v4

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;->setShowConfirmDialog(Z)Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;

    .line 214
    invoke-static {}, Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;->getInstance()Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;->setCallResultActivity(Landroid/app/Activity;)Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;

    .line 215
    invoke-static {}, Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;->getInstance()Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;->pay(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 216
    .end local v22    # "progressDialog":Landroid/app/ProgressDialog;
    :catch_0
    move-exception v19

    .line 217
    .local v19, "e1":Ljava/lang/Exception;
    invoke-static/range {v19 .. v19}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 222
    .end local v19    # "e1":Ljava/lang/Exception;
    :pswitch_4
    sget-boolean v4, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->isDebugable:Z

    invoke-static {v4}, Lcom/arcsoft/hpay100/HPaySdkAPI;->setLogDebug(Z)V

    .line 224
    :try_start_1
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 225
    .local v20, "json":Lorg/json/JSONObject;
    const-string v4, "merid"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, "merid":Ljava/lang/String;
    const-string v4, "appid"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 227
    .local v6, "appid":Ljava/lang/String;
    const-string v4, "channelid"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "channelid":Ljava/lang/String;
    const-string v4, "orientation"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 229
    .local v8, "orientation":Ljava/lang/String;
    const-string v4, "cpName"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 230
    .local v9, "cpname":Ljava/lang/String;
    const-string v4, "kfphone"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 231
    .local v10, "kfphone":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static/range {v4 .. v10}, Lcom/arcsoft/hpay100/HPaySdkAPI;->initHPaySdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v4, "orderid"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 233
    .local v13, "orderid":Ljava/lang/String;
    const-string v4, "payid"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 234
    .local v14, "payid":Ljava/lang/String;
    const-string v4, "price"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    .line 235
    .local v15, "price":I
    const-string v4, "payname"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 236
    .local v16, "payname":Ljava/lang/String;
    const-string v4, "codeType"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    .local v12, "codeType":I
    move-object/from16 v11, p0

    move-object/from16 v17, p0

    .line 237
    invoke-static/range {v11 .. v17}, Lcom/arcsoft/hpay100/HPaySdkAPI;->startHPaySdk(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 238
    .end local v5    # "merid":Ljava/lang/String;
    .end local v6    # "appid":Ljava/lang/String;
    .end local v7    # "channelid":Ljava/lang/String;
    .end local v8    # "orientation":Ljava/lang/String;
    .end local v9    # "cpname":Ljava/lang/String;
    .end local v10    # "kfphone":Ljava/lang/String;
    .end local v12    # "codeType":I
    .end local v13    # "orderid":Ljava/lang/String;
    .end local v14    # "payid":Ljava/lang/String;
    .end local v15    # "price":I
    .end local v16    # "payname":Ljava/lang/String;
    .end local v20    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v18

    .line 239
    .local v18, "e":Ljava/lang/Exception;
    invoke-static/range {v18 .. v18}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 243
    .end local v18    # "e":Ljava/lang/Exception;
    :pswitch_5
    new-instance v21, Lcom/alipay/sdk/app/PayTask;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 244
    .local v21, "payTask":Lcom/alipay/sdk/app/PayTask;
    new-instance v4, Ljava/lang/Thread;

    new-instance v11, Lcom/anzhi/sdk/middle/manage/AgencyActivity$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    move/from16 v3, p1

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/anzhi/sdk/middle/manage/AgencyActivity$2;-><init>(Lcom/anzhi/sdk/middle/manage/AgencyActivity;Lcom/alipay/sdk/app/PayTask;Ljava/lang/String;I)V

    invoke-direct {v4, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 251
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V
    .locals 9
    .param p1, "sdkResult"    # Lcom/arcsoft/hpay100/HPaySdkResult;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 490
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 492
    .local v1, "json":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lcom/arcsoft/hpay100/HPaySdkResult;->getPayStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 528
    :goto_0
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v2

    const-string v3, "payResult"

    new-array v4, v6, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    .line 529
    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 528
    invoke-virtual {v2, v3, v4, v5}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    return-void

    .line 495
    :pswitch_0
    :try_start_0
    sget-object v2, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->RESULT_CODE:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 496
    sget-object v2, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->RESULT_DESC:Ljava/lang/String;

    const-string v3, "\u8ba2\u5355\u63d0\u4ea4\u6210\u529f"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 497
    :catch_0
    move-exception v2

    goto :goto_0

    .line 502
    :pswitch_1
    invoke-virtual {p1}, Lcom/arcsoft/hpay100/HPaySdkResult;->getQuery()Z

    move-result v0

    .line 503
    .local v0, "isQueryToServer":Z
    if-eqz v0, :cond_0

    .line 506
    :try_start_1
    sget-object v2, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->RESULT_CODE:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 507
    sget-object v2, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->RESULT_DESC:Ljava/lang/String;

    const-string v3, "\u652f\u4ed8\u4e2d"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 508
    :catch_1
    move-exception v2

    goto :goto_0

    .line 513
    :cond_0
    :try_start_2
    sget-object v2, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->RESULT_CODE:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 514
    sget-object v2, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->RESULT_DESC:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/arcsoft/hpay100/HPaySdkResult;->getFailedMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 515
    :catch_2
    move-exception v2

    goto :goto_0

    .line 522
    .end local v0    # "isQueryToServer":Z
    :pswitch_2
    :try_start_3
    sget-object v2, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->RESULT_CODE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 523
    sget-object v2, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->RESULT_DESC:Ljava/lang/String;

    const-string v3, "\u652f\u4ed8\u53d6\u6d88"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 524
    :catch_3
    move-exception v2

    goto :goto_0

    .line 492
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public submitPluginDownState(ILjava/lang/String;I)V
    .locals 1
    .param p1, "newPluginVc"    # I
    .param p2, "newPluginMd5"    # Ljava/lang/String;
    .param p3, "state"    # I
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 434
    new-instance v0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/anzhi/sdk/middle/manage/AgencyActivity$3;-><init>(Lcom/anzhi/sdk/middle/manage/AgencyActivity;ILjava/lang/String;I)V

    .line 451
    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AgencyActivity$3;->start()V

    .line 452
    return-void
.end method
