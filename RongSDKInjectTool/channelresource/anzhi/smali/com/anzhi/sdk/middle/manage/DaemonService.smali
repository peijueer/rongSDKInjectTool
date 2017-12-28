.class public Lcom/anzhi/sdk/middle/manage/DaemonService;
.super Landroid/app/Service;
.source "DaemonService.java"


# static fields
.field public static final EXTRA_DOWNLOAD_APP_ID:Ljava/lang/String; = "EXTRA_DOWNLOAD_APP_ID"

.field public static final EXTRA_NOTIFICATION:Ljava/lang/String; = "EXTRA_NOTIFICATION"

.field public static final EXTRA_NOTI_ID:Ljava/lang/String; = "EXTRA_NOTI_ID"

.field public static final EXTRA_OPT:Ljava/lang/String; = "EXTRA_OPT"

.field public static final OPTION_DOWNLOAD:Ljava/lang/String; = "DOWNLOAD"

.field public static final OPTION_START_FOREGROUND:Ljava/lang/String; = "START_FOREGROUND"

.field public static final OPTION_STOP_FOREGROUND:Ljava/lang/String; = "STOP_FOREGROUND"

.field private static sInstance:Lcom/anzhi/sdk/middle/manage/DaemonService;

.field private static sState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anzhi/sdk/middle/manage/DaemonService;->sState:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/anzhi/sdk/middle/manage/DaemonService;
    .locals 2

    .prologue
    .line 55
    const-class v0, Lcom/anzhi/sdk/middle/manage/DaemonService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anzhi/sdk/middle/manage/DaemonService;->sInstance:Lcom/anzhi/sdk/middle/manage/DaemonService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized setInstance(Lcom/anzhi/sdk/middle/manage/DaemonService;)V
    .locals 2
    .param p0, "service"    # Lcom/anzhi/sdk/middle/manage/DaemonService;

    .prologue
    .line 59
    const-class v0, Lcom/anzhi/sdk/middle/manage/DaemonService;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/anzhi/sdk/middle/manage/DaemonService;->sInstance:Lcom/anzhi/sdk/middle/manage/DaemonService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit v0

    return-void

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static startForegroundCompat(ILandroid/app/Notification;)V
    .locals 8
    .param p0, "id"    # I
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    const/4 v7, 0x0

    .line 94
    sget-object v2, Lcom/anzhi/sdk/middle/manage/DaemonService;->sInstance:Lcom/anzhi/sdk/middle/manage/DaemonService;

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/anzhi/sdk/middle/manage/DaemonService;->sState:Z

    if-eqz v2, :cond_0

    .line 95
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 97
    :try_start_0
    const-class v2, Landroid/app/Service;

    const-string v3, "startForeground"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/app/Notification;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 98
    .local v1, "method":Ljava/lang/reflect/Method;
    sget-object v2, Lcom/anzhi/sdk/middle/manage/DaemonService;->sInstance:Lcom/anzhi/sdk/middle/manage/DaemonService;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    sput-boolean v7, Lcom/anzhi/sdk/middle/manage/DaemonService;->sState:Z

    .line 114
    :cond_0
    :goto_1
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-class v2, Landroid/app/Service;

    const-string v3, "setForeground"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 106
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    sget-object v2, Lcom/anzhi/sdk/middle/manage/DaemonService;->sInstance:Lcom/anzhi/sdk/middle/manage/DaemonService;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_2
    sput-boolean v7, Lcom/anzhi/sdk/middle/manage/DaemonService;->sState:Z

    goto :goto_1

    .line 107
    :catch_1
    move-exception v0

    .line 108
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static stopForegroundCompat()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 118
    sget-object v1, Lcom/anzhi/sdk/middle/manage/DaemonService;->sInstance:Lcom/anzhi/sdk/middle/manage/DaemonService;

    if-eqz v1, :cond_0

    .line 119
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 121
    :try_start_0
    const-class v1, Landroid/app/Service;

    const-string v2, "stopForeground"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 122
    .local v0, "method":Ljava/lang/reflect/Method;
    sget-object v1, Lcom/anzhi/sdk/middle/manage/DaemonService;->sInstance:Lcom/anzhi/sdk/middle/manage/DaemonService;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    :goto_0
    sput-boolean v6, Lcom/anzhi/sdk/middle/manage/DaemonService;->sState:Z

    .line 135
    :cond_0
    :goto_1
    return-void

    .line 128
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :try_start_1
    const-class v1, Landroid/app/Service;

    const-string v2, "setForeground"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 129
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    sget-object v1, Lcom/anzhi/sdk/middle/manage/DaemonService;->sInstance:Lcom/anzhi/sdk/middle/manage/DaemonService;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    :goto_2
    sput-boolean v6, Lcom/anzhi/sdk/middle/manage/DaemonService;->sState:Z

    goto :goto_1

    .line 130
    :catch_0
    move-exception v1

    goto :goto_2

    .line 123
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 139
    invoke-static {p0}, Lcom/anzhi/sdk/middle/manage/DaemonService;->setInstance(Lcom/anzhi/sdk/middle/manage/DaemonService;)V

    .line 140
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 141
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/DaemonService;->stopForegroundCompat()V

    .line 151
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/anzhi/sdk/middle/manage/DaemonService;->setInstance(Lcom/anzhi/sdk/middle/manage/DaemonService;)V

    .line 152
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 153
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 65
    if-nez p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string v5, "EXTRA_OPT"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "option":Ljava/lang/String;
    const-string v5, "DOWNLOAD"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    const-string v5, "Anzhi_sdk_lib"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DaemonService option = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v5, "EXTRA_DOWNLOAD_APP_ID"

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 72
    .local v0, "aid":J
    const-string v5, "Anzhi_sdk_lib"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DaemonService download aid "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-eqz v5, :cond_0

    .line 76
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v5

    const-string v6, "startAnzhiService"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    .line 77
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/anzhi/sdk/middle/manage/DaemonService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    .line 76
    invoke-virtual {v5, v6, v7, v8}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 78
    .end local v0    # "aid":J
    :cond_2
    const-string v5, "STOP_FOREGROUND"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 79
    const-string v5, "Anzhi_sdk_lib"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DaemonService option = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/DaemonService;->stopForegroundCompat()V

    goto/16 :goto_0

    .line 81
    :cond_3
    const-string v5, "START_FOREGROUND"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    sget-boolean v5, Lcom/anzhi/sdk/middle/manage/DaemonService;->sState:Z

    if-eqz v5, :cond_0

    .line 83
    const-string v5, "Anzhi_sdk_lib"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DaemonService option = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v5, "EXTRA_NOTI_ID"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 85
    .local v2, "notiId":I
    const-string v5, "EXTRA_NOTIFICATION"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/Notification;

    .line 86
    .local v3, "notification":Landroid/app/Notification;
    invoke-static {v2, v3}, Lcom/anzhi/sdk/middle/manage/DaemonService;->startForegroundCompat(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method
