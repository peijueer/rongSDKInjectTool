.class public Lcom/zqhy/sdk/pay/a/a;
.super Ljava/lang/Object;
.source "AliPayBean.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/zqhy/sdk/pay/a/a;
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/zqhy/sdk/pay/a/a;

    invoke-direct {v0}, Lcom/zqhy/sdk/pay/a/a;-><init>()V

    .line 15
    if-nez p0, :cond_0

    .line 21
    :goto_0
    return-object v0

    .line 18
    :cond_0
    const-string v1, "out_trade_no"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/pay/a/a;->a(Ljava/lang/String;)V

    .line 19
    const-string v1, "pay_str"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/pay/a/a;->b(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zqhy/sdk/pay/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/zqhy/sdk/pay/a/a;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/zqhy/sdk/pay/a/a;->b:Ljava/lang/String;

    .line 38
    return-void
.end method
