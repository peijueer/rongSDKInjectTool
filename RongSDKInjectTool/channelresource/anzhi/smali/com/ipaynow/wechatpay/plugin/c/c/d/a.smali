.class public final Lcom/ipaynow/wechatpay/plugin/c/c/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;


# direct methods
.method public constructor <init>(Lcom/ipaynow/wechatpay/plugin/c/c/a/a;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    .line 15
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    .line 16
    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 65
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/ipaynow/wechatpay/plugin/utils/g;->y(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    :cond_0
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 69
    array-length v1, v0

    if-ne v1, v2, :cond_1

    .line 72
    :goto_0
    return-object v0

    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/ipaynow/wechatpay/plugin/conf/b;->s:Lcom/ipaynow/wechatpay/plugin/conf/b;

    invoke-virtual {v2}, Lcom/ipaynow/wechatpay/plugin/conf/b;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/HashMap;)Lcom/ipaynow/wechatpay/plugin/c/c/a/a;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    const-string v0, "A002"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "responseMsg"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "responseMsg"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->c(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_0
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    const-string v2, "02"

    iput-object v2, v1, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->Y:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    iput-object p1, v1, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->respCode:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    aget-object v2, v0, v3

    iput-object v2, v1, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->errorCode:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    aget-object v0, v0, v4

    iput-object v0, v1, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->respMsg:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    iput-object p2, v0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->Z:Ljava/util/HashMap;

    .line 41
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    return-object v0

    .line 35
    :cond_0
    const-string v0, "responseMsg"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "responseMsg"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->c(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/ipaynow/wechatpay/plugin/conf/b;->s:Lcom/ipaynow/wechatpay/plugin/conf/b;

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/conf/b;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "\u672a\u77e5\u9519\u8bef"

    aput-object v1, v0, v4

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/c/c/a/a;
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    const-string v1, "02"

    iput-object v1, v0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->Y:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    const-string v1, "02"

    iput-object v1, v0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->respCode:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    iput-object p1, v0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->errorCode:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    iput-object p2, v0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->respMsg:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/util/HashMap;)Lcom/ipaynow/wechatpay/plugin/c/c/a/a;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    const-string v1, "00"

    iput-object v1, v0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->Y:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    iput-object p1, v0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->respCode:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    iput-object p2, v0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->Z:Ljava/util/HashMap;

    .line 48
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    return-object v0
.end method

.method public final k()Lcom/ipaynow/wechatpay/plugin/c/c/a/a;
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    const-string v1, "01"

    iput-object v1, v0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->Y:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    const-string v1, "01"

    iput-object v1, v0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->respCode:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    sget-object v1, Lcom/ipaynow/wechatpay/plugin/conf/b;->j:Lcom/ipaynow/wechatpay/plugin/conf/b;

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/conf/b;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->errorCode:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    sget-object v1, Lcom/ipaynow/wechatpay/plugin/conf/b;->j:Lcom/ipaynow/wechatpay/plugin/conf/b;

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/conf/b;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->respMsg:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/d/a;->N:Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    return-object v0
.end method
