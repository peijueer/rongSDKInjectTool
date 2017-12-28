.class public Lcom/anzhi/sdk/middle/manage/PushService;
.super Landroid/app/Service;
.source "PushService.java"


# static fields
.field private static final INTERVAL:I = 0x78


# instance fields
.field count:I

.field private mAlarm:Landroid/app/AlarmManager;

.field private mHandler:Landroid/os/Handler;

.field private mPendIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    new-instance v0, Lcom/anzhi/sdk/middle/manage/PushService$1;

    invoke-direct {v0, p0}, Lcom/anzhi/sdk/middle/manage/PushService$1;-><init>(Lcom/anzhi/sdk/middle/manage/PushService;)V

    iput-object v0, p0, Lcom/anzhi/sdk/middle/manage/PushService;->mHandler:Landroid/os/Handler;

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/anzhi/sdk/middle/manage/PushService;)Landroid/app/AlarmManager;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/PushService;->mAlarm:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/anzhi/sdk/middle/manage/PushService;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/PushService;->mPendIntent:Landroid/app/PendingIntent;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 68
    const-string v1, "Anzhi_sdk_lib"

    const-string v2, "PushServer onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/anzhi/sdk/middle/manage/PushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/anzhi/sdk/middle/manage/PushService;->mAlarm:Landroid/app/AlarmManager;

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/anzhi/sdk/middle/manage/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_RESET"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/anzhi/sdk/middle/manage/PushService;->mPendIntent:Landroid/app/PendingIntent;

    .line 73
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v1

    invoke-virtual {p0}, Lcom/anzhi/sdk/middle/manage/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/anzhi/sdk/middle/manage/PushService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->init(Landroid/content/Context;Landroid/os/Handler;)V

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 89
    const-string v0, "Anzhi_sdk_lib"

    const-string v1, "PushServer onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 81
    if-eqz p1, :cond_0

    const-string v0, "EXTRA_RESET"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/PushService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->startPush(Landroid/os/Handler;)V

    .line 84
    :cond_0
    return-void
.end method
