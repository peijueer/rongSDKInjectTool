.class public Lcom/lzy/okhttputils/utils/OkLogger;
.super Ljava/lang/Object;
.source "OkLogger.java"


# static fields
.field private static isLogEnable:Z

.field public static tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lzy/okhttputils/utils/OkLogger;->isLogEnable:Z

    .line 17
    const-string v0, "OkHttpUtils"

    sput-object v0, Lcom/lzy/okhttputils/utils/OkLogger;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/lzy/okhttputils/utils/OkLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lzy/okhttputils/utils/OkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/lzy/okhttputils/utils/OkLogger;->isLogEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 24
    sput-object p0, Lcom/lzy/okhttputils/utils/OkLogger;->tag:Ljava/lang/String;

    .line 25
    sput-boolean p1, Lcom/lzy/okhttputils/utils/OkLogger;->isLogEnable:Z

    .line 26
    return-void
.end method

.method public static debug(Z)V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/lzy/okhttputils/utils/OkLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lzy/okhttputils/utils/OkLogger;->debug(Ljava/lang/String;Z)V

    .line 21
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/lzy/okhttputils/utils/OkLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/lzy/okhttputils/utils/OkLogger;->isLogEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/lzy/okhttputils/utils/OkLogger;->isLogEnable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/lzy/okhttputils/utils/OkLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lzy/okhttputils/utils/OkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/lzy/okhttputils/utils/OkLogger;->isLogEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/lzy/okhttputils/utils/OkLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lzy/okhttputils/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/lzy/okhttputils/utils/OkLogger;->isLogEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/lzy/okhttputils/utils/OkLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lzy/okhttputils/utils/OkLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/lzy/okhttputils/utils/OkLogger;->isLogEnable:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    return-void
.end method
