.class public final Lcom/ipaynow/wechatpay/plugin/c/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static H:Lcom/ipaynow/wechatpay/plugin/c/b/a;

.field private static I:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/ipaynow/wechatpay/plugin/c/b/a;->H:Lcom/ipaynow/wechatpay/plugin/c/b/a;

    .line 26
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 112
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "post exception = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 113
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/conf/f;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ipaynow/wechatpay/plugin/utils/c;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 115
    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/utils/g;->y(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    sget v0, Lcom/ipaynow/wechatpay/plugin/c/b/a;->I:I

    if-lt v0, v4, :cond_1

    .line 131
    :cond_0
    return-void

    .line 119
    :cond_1
    sget v0, Lcom/ipaynow/wechatpay/plugin/c/b/a;->I:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ipaynow/wechatpay/plugin/c/b/a;->I:I

    goto :goto_0

    .line 121
    :cond_2
    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/utils/PluginTools;->v(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 123
    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/manager/b/a;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "signature"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/conf/d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/ipaynow/wechatpay/plugin/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "responseCode"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    const-string v1, "A001"

    invoke-static {v1, v0}, Lcom/ipaynow/wechatpay/plugin/utils/g;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    sget v0, Lcom/ipaynow/wechatpay/plugin/c/b/a;->I:I

    if-ge v0, v4, :cond_0

    .line 133
    sget v0, Lcom/ipaynow/wechatpay/plugin/c/b/a;->I:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ipaynow/wechatpay/plugin/c/b/a;->I:I

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 47
    invoke-static {p0}, Lcom/ipaynow/wechatpay/plugin/c/b/a;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 54
    :cond_0
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->I()Lcom/ipaynow/wechatpay/plugin/manager/route/a;

    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->v()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/ipaynow/wechatpay/plugin/conf/b;->m:Lcom/ipaynow/wechatpay/plugin/conf/b;

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/conf/b;->name()Ljava/lang/String;

    move-result-object v1

    .line 55
    sget-object v2, Lcom/ipaynow/wechatpay/plugin/conf/b;->m:Lcom/ipaynow/wechatpay/plugin/conf/b;

    invoke-virtual {v2}, Lcom/ipaynow/wechatpay/plugin/conf/b;->d()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-static {v0, v1, v2}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 57
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 60
    :cond_1
    return-void
.end method

.method private static b(Ljava/lang/Throwable;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 63
    if-nez p0, :cond_1

    .line 64
    const/4 v0, 0x0

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    :try_start_0
    new-instance v1, Lcom/ipaynow/wechatpay/plugin/c/b/b;

    invoke-direct {v1}, Lcom/ipaynow/wechatpay/plugin/c/b/b;-><init>()V

    .line 79
    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/c/b/b;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deviceInfo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 86
    const-string v1, ""

    .line 87
    if-eqz p0, :cond_2

    .line 88
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    invoke-static {p0}, Lcom/ipaynow/wechatpay/plugin/c/b/a;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 91
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 93
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->u()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ipaynow/wechatpay/plugin/manager/b/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/utils/g;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 98
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/ipaynow/wechatpay/plugin/c/b/c;

    invoke-direct {v3, v1}, Lcom/ipaynow/wechatpay/plugin/c/b/c;-><init>(Ljava/lang/String;)V

    .line 104
    const-string v1, "ExceptionPost"

    .line 98
    invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    goto :goto_0

    .line 81
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static c(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 141
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ThrowableName:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ThrowableThreadName:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 148
    if-nez v2, :cond_1

    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 152
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    long-to-int v0, v4

    div-int/lit16 v0, v0, 0x400

    div-int/lit16 v0, v0, 0x400

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AppMaxMemory:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    long-to-int v0, v4

    div-int/lit16 v0, v0, 0x400

    div-int/lit16 v0, v0, 0x400

    int-to-long v4, v0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "AppUseMemory:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    const-string v0, "ThrowableContent:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_2

    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_2
    aget-object v3, v2, v0

    .line 160
    if-nez v3, :cond_3

    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ipaynow"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 166
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
