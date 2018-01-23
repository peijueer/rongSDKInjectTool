.class public final Lcom/ipaynow/wechatpay/plugin/c/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ipaynow/wechatpay/plugin/c/c/c/a;


# instance fields
.field private I:I

.field private N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

.field private O:Lcom/ipaynow/wechatpay/plugin/c/c/b;

.field private P:Lcom/ipaynow/wechatpay/plugin/c/c/d/a;

.field private Q:Z


# direct methods
.method public constructor <init>(Lcom/ipaynow/wechatpay/plugin/c/c/b;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    .line 25
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->O:Lcom/ipaynow/wechatpay/plugin/c/c/b;

    .line 26
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->P:Lcom/ipaynow/wechatpay/plugin/c/c/d/a;

    .line 32
    new-instance v0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    invoke-direct {v0}, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    .line 33
    new-instance v0, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    invoke-direct {v0, v1}, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;-><init>(Lcom/ipaynow/wechatpay/plugin/c/c/a/a;)V

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->P:Lcom/ipaynow/wechatpay/plugin/c/c/d/a;

    .line 34
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->O:Lcom/ipaynow/wechatpay/plugin/c/c/b;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->I:I

    .line 36
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/c/c/a/a;
    .locals 5

    .prologue
    .line 59
    .line 62
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    .line 63
    const-string v1, "\u8c03\u7528\u4e86WP001\u63a5\u53e3"

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 64
    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/manager/b/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bbe\u5907\u4fe1\u606f = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bf7\u6c42\u7684\u539f\u59cb\u62a5\u6587 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 67
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/conf/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ipaynow/wechatpay/plugin/c/a/b;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bf7\u6c42\u7684\u52a0\u5bc6\u62a5\u6587 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 69
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/conf/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ipaynow/wechatpay/plugin/c/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/utils/g;->y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->P:Lcom/ipaynow/wechatpay/plugin/c/c/d/a;

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->k()Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 73
    :cond_0
    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/manager/b/a;->g(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 74
    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/manager/b/a;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    .line 75
    const-string v0, "signature"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/conf/d;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/ipaynow/wechatpay/plugin/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->P:Lcom/ipaynow/wechatpay/plugin/c/c/d/a;

    sget-object v1, Lcom/ipaynow/wechatpay/plugin/conf/b;->s:Lcom/ipaynow/wechatpay/plugin/conf/b;

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/conf/b;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ipaynow/wechatpay/plugin/conf/b;->s:Lcom/ipaynow/wechatpay/plugin/conf/b;

    invoke-virtual {v2}, Lcom/ipaynow/wechatpay/plugin/conf/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u6536\u5230\u7684\u62a5\u6587 = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 79
    const-string v0, "responseCode"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    const-string v1, "A001"

    invoke-static {v1, v0}, Lcom/ipaynow/wechatpay/plugin/utils/g;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->P:Lcom/ipaynow/wechatpay/plugin/c/c/d/a;

    invoke-virtual {v1, v0, v2}, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->a(Ljava/lang/String;Ljava/util/HashMap;)Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->P:Lcom/ipaynow/wechatpay/plugin/c/c/d/a;

    invoke-virtual {v1, v0, v2}, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->b(Ljava/lang/String;Ljava/util/HashMap;)Lcom/ipaynow/wechatpay/plugin/c/c/a/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/c/b/a;->a(Ljava/lang/Throwable;)V

    .line 89
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->P:Lcom/ipaynow/wechatpay/plugin/c/c/d/a;

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->k()Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    invoke-static {p0}, Lcom/ipaynow/wechatpay/plugin/utils/g;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, ""

    .line 153
    :goto_0
    return-object v0

    .line 149
    :cond_0
    invoke-static {p0, p1}, Lcom/ipaynow/wechatpay/plugin/utils/c;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_1

    const-string v1, "\u4e2d\u5c0f\u5f00\u53d1\u8005HTTPS\u670d\u52a1\u901a\u8baf\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(I)V
    .locals 2

    .prologue
    .line 158
    int-to-long v0, p0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    const-string v0, "\u5ef6\u8fdf\u65f6\u95f4\u65b9\u6cd5\u5f02\u5e38"

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/d/b;->c(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private varargs b([Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/c/c/a/a;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 99
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->O:Lcom/ipaynow/wechatpay/plugin/c/c/b;

    const-string v1, "\u67e5\u8be2\u4ea4\u6613\u7ed3\u679c..."

    invoke-virtual {v0, v1}, Lcom/ipaynow/wechatpay/plugin/c/c/b;->b(Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 104
    iget-boolean v1, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->Q:Z

    if-nez v1, :cond_0

    .line 105
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/conf/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ipaynow/wechatpay/plugin/c/a/b;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 106
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->Q:Z

    :cond_0
    move-object v2, v0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bf7\u6c42\u7684\u539f\u59cb\u62a5\u6587 = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 109
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/conf/f;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ipaynow/wechatpay/plugin/c/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    if-nez v0, :cond_2

    .line 111
    iget v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->I:I

    if-lt v0, v5, :cond_1

    .line 112
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->P:Lcom/ipaynow/wechatpay/plugin/c/c/d/a;

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->k()Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .line 114
    :cond_1
    iget v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->I:I

    mul-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/c/c/a;->a(I)V

    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/ipaynow/wechatpay/plugin/c/c/a;->b([Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_2
    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/manager/b/a;->g(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 118
    invoke-static {v3}, Lcom/ipaynow/wechatpay/plugin/manager/b/a;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\u9a8c\u7b7e\u7684\u62a5\u6587 = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 120
    const-string v0, "signature"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/conf/d;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lcom/ipaynow/wechatpay/plugin/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->P:Lcom/ipaynow/wechatpay/plugin/c/c/d/a;

    sget-object v1, Lcom/ipaynow/wechatpay/plugin/conf/b;->s:Lcom/ipaynow/wechatpay/plugin/conf/b;

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/conf/b;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ipaynow/wechatpay/plugin/conf/b;->s:Lcom/ipaynow/wechatpay/plugin/conf/b;

    invoke-virtual {v2}, Lcom/ipaynow/wechatpay/plugin/conf/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_3
    const-string v0, "responseCode"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    const-string v1, "A001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 125
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->P:Lcom/ipaynow/wechatpay/plugin/c/c/d/a;

    invoke-virtual {v1, v0, v3}, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->a(Ljava/lang/String;Ljava/util/HashMap;)Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_4
    const-string v1, "tradeStatus"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    const-string v4, "A003"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "A004"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 129
    :cond_5
    iget v1, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->I:I

    if-lt v1, v5, :cond_6

    .line 130
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->P:Lcom/ipaynow/wechatpay/plugin/c/c/d/a;

    invoke-virtual {v1, v0, v3}, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->b(Ljava/lang/String;Ljava/util/HashMap;)Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    move-result-object v0

    goto/16 :goto_0

    .line 132
    :cond_6
    const/16 v0, 0xc8

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/c/c/a;->a(I)V

    .line 133
    iget v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->I:I

    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/ipaynow/wechatpay/plugin/c/c/a;->b([Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    move-result-object v0

    goto/16 :goto_0

    .line 136
    :cond_7
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->P:Lcom/ipaynow/wechatpay/plugin/c/c/d/a;

    invoke-virtual {v1, v0, v3}, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->b(Ljava/lang/String;Ljava/util/HashMap;)Lcom/ipaynow/wechatpay/plugin/c/c/a/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/c/b/a;->a(Ljava/lang/Throwable;)V

    .line 142
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a;->P:Lcom/ipaynow/wechatpay/plugin/c/c/d/a;

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->k()Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final varargs a(I[Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/c/c/a/a;
    .locals 2

    .prologue
    .line 40
    packed-switch p1, :pswitch_data_0

    .line 46
    :pswitch_0
    const-string v0, "ipaynow"

    const-string v1, "\u7a7a\u6307\u9488-IPRemoteServices-45"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 42
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/ipaynow/wechatpay/plugin/c/c/a;->a([Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    move-result-object v0

    goto :goto_0

    .line 44
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/ipaynow/wechatpay/plugin/c/c/a;->b([Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    move-result-object v0

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
