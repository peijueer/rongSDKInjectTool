.class final Lcom/unionpay/sdk/w;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/sdk/w$a;
    }
.end annotation


# static fields
.field static volatile a:Z

.field static volatile b:Z

.field static c:Z

.field static d:Lcom/unionpay/sdk/at;

.field private static e:Z

.field private static final f:Landroid/os/HandlerThread;

.field private static g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unionpay/sdk/w;->a:Z

    sput-boolean v0, Lcom/unionpay/sdk/w;->b:Z

    sput-boolean v0, Lcom/unionpay/sdk/w;->e:Z

    sput-boolean v0, Lcom/unionpay/sdk/w;->c:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PauseEventThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/unionpay/sdk/w;->f:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    sput-object v0, Lcom/unionpay/sdk/w;->g:Landroid/os/Handler;

    sget-object v0, Lcom/unionpay/sdk/w;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/unionpay/sdk/x;

    sget-object v1, Lcom/unionpay/sdk/w;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unionpay/sdk/x;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/unionpay/sdk/w;->g:Landroid/os/Handler;

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    sget-boolean v0, Lcom/unionpay/sdk/w;->a:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/unionpay/sdk/ab;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/unionpay/sdk/ab;->getPartnerId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/unionpay/sdk/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/unionpay/sdk/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/unionpay/sdk/az;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unionpay/sdk/aw;->a()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Lcom/unionpay/sdk/w$a;

    invoke-direct {v0}, Lcom/unionpay/sdk/w$a;-><init>()V

    iget-object v1, v0, Lcom/unionpay/sdk/w$a;->a:Ljava/util/HashMap;

    const-string v2, "apiType"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/unionpay/sdk/w$a;->a:Ljava/util/HashMap;

    const-string v2, "occurTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/unionpay/sdk/w$a;->a:Ljava/util/HashMap;

    const-string v2, "isPageOrSession"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/unionpay/sdk/w$a;->a:Ljava/util/HashMap;

    const-string v2, "sessionEnd"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/unionpay/sdk/aw;->a()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const-string v0, "2"

    invoke-static {v0}, Lcom/unionpay/sdk/az;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/unionpay/sdk/w;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method

.method static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/unionpay/sdk/w;->a:Z

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/unionpay/sdk/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/unionpay/sdk/w;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method

.method static a(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/unionpay/sdk/w;->a:Z

    if-nez v0, :cond_0

    invoke-static {p0, v1, v1}, Lcom/unionpay/sdk/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/unionpay/sdk/az;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/unionpay/sdk/az;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/unionpay/sdk/w;->e()V

    :cond_1
    const-string v0, "0"

    invoke-static {v0}, Lcom/unionpay/sdk/az;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/unionpay/sdk/w;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_2

    const-string v0, "Ignore page changing during screen switch"

    invoke-static {v0}, Lcom/unionpay/sdk/ay;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unionpay/sdk/w;->e:Z

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/unionpay/sdk/aa;

    invoke-direct {v0, p1, p2, p0}, Lcom/unionpay/sdk/aa;-><init>(Ljava/lang/String;ZLandroid/app/Activity;)V

    invoke-static {v0}, Lcom/unionpay/sdk/k;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/unionpay/sdk/w;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unionpay/sdk/w;->e:Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageStart being called! pageName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/sdk/ay;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/unionpay/sdk/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/4 v0, 0x6

    invoke-static {p0, p1, v0}, Lcom/unionpay/sdk/w;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    sget-boolean v0, Lcom/unionpay/sdk/w;->a:Z

    if-nez v0, :cond_0

    invoke-static {p0, v1, v1}, Lcom/unionpay/sdk/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/unionpay/sdk/ad;

    invoke-direct {v0, p2, p1}, Lcom/unionpay/sdk/ad;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/unionpay/sdk/k;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-nez p0, :cond_0

    const-string v0, "Init failed Context is null"

    invoke-static {v0}, Lcom/unionpay/sdk/ay;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v0, "UPLog"

    sput-object v0, Lcom/unionpay/sdk/k;->c:Ljava/lang/String;

    sget-boolean v0, Lcom/unionpay/sdk/w;->a:Z

    if-nez v0, :cond_b

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "UP_APP_ID"

    invoke-static {v1, v0}, Lcom/unionpay/sdk/w;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UP_CHANNEL_ID"

    invoke-static {v1, v2}, Lcom/unionpay/sdk/w;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/unionpay/sdk/k;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object p1, v0

    :cond_1
    invoke-static {v1}, Lcom/unionpay/sdk/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    const-string v0, "ChannelConfig.json"

    invoke-static {p0, v0}, Lcom/unionpay/sdk/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/sdk/k;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_2
    invoke-static {v0}, Lcom/unionpay/sdk/k;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_3
    invoke-static {p1}, Lcom/unionpay/sdk/k;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "[SDKInit] TD AppId is null"

    invoke-static {v0}, Lcom/unionpay/sdk/ay;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[SDKInit] Failed to initialize!"

    invoke-static {v1, v0}, Lcom/unionpay/sdk/ay;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    move-object v1, p2

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    :try_start_1
    const-string v0, "Default"

    goto :goto_3

    :cond_5
    const-string v1, "android.permission.INTERNET"

    invoke-static {p0, v1}, Lcom/unionpay/sdk/k;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v0, "[SDKInit] Permission \"android.permission.INTERNET\" is needed."

    invoke-static {v0}, Lcom/unionpay/sdk/ay;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-static {p1, v0}, Lcom/unionpay/sdk/ab;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v0, 0xe

    :try_start_2
    invoke-static {v0}, Lcom/unionpay/sdk/k;->a(I)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :try_start_3
    sget-object v1, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_9

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    sget-boolean v1, Lcom/unionpay/sdk/w;->c:Z

    if-nez v1, :cond_8

    const-string v1, "android.app.Application$ActivityLifecycleCallbacks"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "registerActivityLifecycleCallbacks"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-instance v2, Lcom/unionpay/sdk/at;

    invoke-direct {v2}, Lcom/unionpay/sdk/at;-><init>()V

    sput-object v2, Lcom/unionpay/sdk/w;->d:Lcom/unionpay/sdk/at;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/unionpay/sdk/w;->d:Lcom/unionpay/sdk/at;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unionpay/sdk/w;->c:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_8
    :goto_5
    :try_start_4
    new-instance v0, Lcom/unionpay/sdk/y;

    invoke-direct {v0}, Lcom/unionpay/sdk/y;-><init>()V

    invoke-static {v0}, Lcom/unionpay/sdk/k;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unionpay/sdk/w;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Analytics SDK Initializing...\n\tSDK_VERSION is: Android+UP+V2.2.33 gp\n\tApp ID is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/unionpay/sdk/ab;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tApp Channel is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/unionpay/sdk/ab;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tSDK_OVC is: TDOVC+002f025db9206d4e7824a3846d0b93cc+UnionPayChaJian"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/sdk/ay;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "[SDKInit] Failed to initialize!"

    invoke-static {v1, v0}, Lcom/unionpay/sdk/ay;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_9
    :try_start_5
    sget-object v1, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_7

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :cond_a
    :try_start_6
    new-instance v0, Lcom/unionpay/sdk/af;

    invoke-direct {v0, p0}, Lcom/unionpay/sdk/af;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    const-string v1, "android.app.ActivityManagerNative"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "gDefault"

    const-string v3, "android.app.IActivityManager"

    invoke-static {v1, v0, v2, v3}, Lcom/unionpay/sdk/k;->a(Ljava/lang/Class;Lcom/unionpay/sdk/i;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unionpay/sdk/w;->c:Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerActivityLifecycleListener "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/sdk/ay;->b(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_5

    :cond_b
    invoke-static {}, Lcom/unionpay/sdk/u;->a()Lcom/unionpay/sdk/u;

    invoke-static {}, Lcom/unionpay/sdk/s;->a()Lcom/unionpay/sdk/s;

    invoke-static {}, Lcom/unionpay/sdk/w;->e()V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto :goto_5
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    new-instance v0, Lcom/unionpay/sdk/z;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/unionpay/sdk/z;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/unionpay/sdk/k;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    new-instance v0, Lcom/unionpay/sdk/ae;

    invoke-direct {v0, p1, p0}, Lcom/unionpay/sdk/ae;-><init>(Ljava/lang/Throwable;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/unionpay/sdk/k;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static a(Ljava/lang/String;J)V
    .locals 3

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v1, "UPpref_longtime"

    const-string v2, "UPadditionalVersionName"

    invoke-static {v0, v1, v2, p0}, Lcom/unionpay/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v1, "UPpref_longtime"

    const-string v2, "UPadditionalVersionCode"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/unionpay/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method static a(Ljava/lang/String;Z)V
    .locals 4

    const/4 v1, 0x0

    const-string v0, "1"

    invoke-static {v0}, Lcom/unionpay/sdk/az;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/unionpay/sdk/w;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/unionpay/sdk/w;->g:Landroid/os/Handler;

    sget-wide v2, Lcom/unionpay/sdk/ab;->l:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance v0, Lcom/unionpay/sdk/ac;

    invoke-direct {v0, p0, p1}, Lcom/unionpay/sdk/ac;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/unionpay/sdk/k;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b()Ljava/nio/channels/FileChannel;
    .locals 1

    invoke-static {}, Lcom/unionpay/sdk/w;->f()Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method static b(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unionpay/sdk/w;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageEnd being called! pageName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/sdk/ay;->a(Ljava/lang/String;)V

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {p1}, Lcom/unionpay/sdk/k;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unionpay/sdk/w;->e:Z

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x7

    invoke-static {p0, p1, v0}, Lcom/unionpay/sdk/w;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic c()V
    .locals 5

    invoke-static {}, Lcom/unionpay/sdk/az;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v3, "UPpref_longtime"

    const-string v4, "UPpref.init.key"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/unionpay/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/unionpay/sdk/az;->e()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unionpay/sdk/k;->e:Z

    goto :goto_0
.end method

.method static synthetic d()V
    .locals 0

    invoke-static {}, Lcom/unionpay/sdk/w;->e()V

    return-void
.end method

.method private static e()V
    .locals 4

    new-instance v0, Lcom/unionpay/sdk/w$a;

    invoke-direct {v0}, Lcom/unionpay/sdk/w$a;-><init>()V

    iget-object v1, v0, Lcom/unionpay/sdk/w$a;->a:Ljava/util/HashMap;

    const-string v2, "apiType"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/unionpay/sdk/w$a;->a:Ljava/util/HashMap;

    const-string v2, "controller"

    invoke-static {}, Lcom/unionpay/sdk/u;->a()Lcom/unionpay/sdk/u;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x66

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/unionpay/sdk/aw;->a()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private static f()Ljava/nio/channels/FileChannel;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "td.lock"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    sget-boolean v2, Lcom/unionpay/sdk/UPAgent;->LOG_ON:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    sget-boolean v3, Lcom/unionpay/sdk/UPAgent;->LOG_ON:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method
