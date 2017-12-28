.class public Lcom/arcsoft/hpay100/config/w;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/arcsoft/hpay100/HPaySMSCodeCallBack; = null

.field private static final b:I = 0xc350

.field private static final c:I = 0x7d0

.field private static d:Ljava/lang/Runnable;

.field private static e:Landroid/os/Handler;

.field private static f:Ljava/lang/Runnable;

.field private static g:Landroid/os/Handler;

.field private static h:Z

.field private static i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/arcsoft/hpay100/config/w;->d:Ljava/lang/Runnable;

    sput-object v0, Lcom/arcsoft/hpay100/config/w;->e:Landroid/os/Handler;

    sput-object v0, Lcom/arcsoft/hpay100/config/w;->f:Ljava/lang/Runnable;

    sput-object v0, Lcom/arcsoft/hpay100/config/w;->g:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/arcsoft/hpay100/config/w;->h:Z

    const-string v0, ""

    sput-object v0, Lcom/arcsoft/hpay100/config/w;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/arcsoft/hpay100/config/w;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/arcsoft/hpay100/config/w;->b(Landroid/app/Activity;)V

    return-void
.end method

.method private static a(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;)V
    .locals 1

    new-instance v0, Lcom/arcsoft/hpay100/config/z;

    invoke-direct {v0, p0, p1}, Lcom/arcsoft/hpay100/config/z;-><init>(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;)V

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/ab;->a(Lcom/arcsoft/hpay100/config/ar;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySMSCodeCallBack;)V
    .locals 4

    const-string v0, "dalongTest"

    const-string v1, "sumbitSMSCode:"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p2, Lcom/arcsoft/hpay100/config/w;->a:Lcom/arcsoft/hpay100/HPaySMSCodeCallBack;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/arcsoft/hpay100/config/w;->h:Z

    const-string v0, ""

    sput-object v0, Lcom/arcsoft/hpay100/config/w;->i:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/arcsoft/hpay100/config/w;->a(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;)V

    invoke-static {}, Lcom/arcsoft/hpay100/config/w;->i()V

    new-instance v0, Lcom/arcsoft/hpay100/config/x;

    invoke-direct {v0, p0}, Lcom/arcsoft/hpay100/config/x;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/arcsoft/hpay100/config/w;->d:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/arcsoft/hpay100/config/w;->e:Landroid/os/Handler;

    sget-object v0, Lcom/arcsoft/hpay100/config/w;->e:Landroid/os/Handler;

    sget-object v1, Lcom/arcsoft/hpay100/config/w;->d:Ljava/lang/Runnable;

    const-wide/32 v2, 0xc350

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Landroid/os/Handler;)V
    .locals 0

    sput-object p0, Lcom/arcsoft/hpay100/config/w;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/arcsoft/hpay100/HPaySMSCodeCallBack;)V
    .locals 0

    sput-object p0, Lcom/arcsoft/hpay100/config/w;->a:Lcom/arcsoft/hpay100/HPaySMSCodeCallBack;

    return-void
.end method

.method static synthetic a(Ljava/lang/Runnable;)V
    .locals 0

    sput-object p0, Lcom/arcsoft/hpay100/config/w;->f:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/arcsoft/hpay100/config/w;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0

    sput-boolean p0, Lcom/arcsoft/hpay100/config/w;->h:Z

    return-void
.end method

.method static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/arcsoft/hpay100/config/w;->i()V

    return-void
.end method

.method private static b(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "dalongTest"

    const-string v1, "onSmsTimeout"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/arcsoft/hpay100/config/w;->h:Z

    invoke-static {}, Lcom/arcsoft/hpay100/config/w;->k()V

    invoke-static {}, Lcom/arcsoft/hpay100/config/w;->i()V

    new-instance v0, Lcom/arcsoft/hpay100/config/y;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/config/y;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c()Z
    .locals 1

    sget-boolean v0, Lcom/arcsoft/hpay100/config/w;->h:Z

    return v0
.end method

.method static synthetic d()V
    .locals 0

    invoke-static {}, Lcom/arcsoft/hpay100/config/w;->k()V

    return-void
.end method

.method static synthetic e()Lcom/arcsoft/hpay100/HPaySMSCodeCallBack;
    .locals 1

    sget-object v0, Lcom/arcsoft/hpay100/config/w;->a:Lcom/arcsoft/hpay100/HPaySMSCodeCallBack;

    return-object v0
.end method

.method static synthetic f()V
    .locals 0

    invoke-static {}, Lcom/arcsoft/hpay100/config/w;->j()V

    return-void
.end method

.method static synthetic g()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/arcsoft/hpay100/config/w;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/arcsoft/hpay100/config/w;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static i()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/arcsoft/hpay100/config/w;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/arcsoft/hpay100/config/w;->e:Landroid/os/Handler;

    sget-object v1, Lcom/arcsoft/hpay100/config/w;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/arcsoft/hpay100/config/w;->e:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/arcsoft/hpay100/config/w;->d:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static j()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/arcsoft/hpay100/config/w;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/arcsoft/hpay100/config/w;->g:Landroid/os/Handler;

    sget-object v1, Lcom/arcsoft/hpay100/config/w;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/arcsoft/hpay100/config/w;->g:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/arcsoft/hpay100/config/w;->f:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static k()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/ab;->a(Lcom/arcsoft/hpay100/config/ar;)V

    return-void
.end method
