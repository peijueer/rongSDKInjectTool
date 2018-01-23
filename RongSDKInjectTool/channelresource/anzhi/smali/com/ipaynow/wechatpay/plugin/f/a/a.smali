.class public final enum Lcom/ipaynow/wechatpay/plugin/f/a/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum bB:Lcom/ipaynow/wechatpay/plugin/f/a/a;

.field public static final enum bC:Lcom/ipaynow/wechatpay/plugin/f/a/a;

.field public static final enum bD:Lcom/ipaynow/wechatpay/plugin/f/a/a;

.field public static final enum bE:Lcom/ipaynow/wechatpay/plugin/f/a/a;

.field private static final synthetic bF:[Lcom/ipaynow/wechatpay/plugin/f/a/a;


# instance fields
.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/ipaynow/wechatpay/plugin/f/a/a;

    const-string v1, "DIANXIN"

    const-string v2, "0"

    invoke-direct {v0, v1, v3, v2}, Lcom/ipaynow/wechatpay/plugin/f/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ipaynow/wechatpay/plugin/f/a/a;->bB:Lcom/ipaynow/wechatpay/plugin/f/a/a;

    new-instance v0, Lcom/ipaynow/wechatpay/plugin/f/a/a;

    const-string v1, "LIANTONG"

    const-string v2, "1"

    invoke-direct {v0, v1, v4, v2}, Lcom/ipaynow/wechatpay/plugin/f/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ipaynow/wechatpay/plugin/f/a/a;->bC:Lcom/ipaynow/wechatpay/plugin/f/a/a;

    new-instance v0, Lcom/ipaynow/wechatpay/plugin/f/a/a;

    const-string v1, "YIDONG"

    const-string v2, "2"

    invoke-direct {v0, v1, v5, v2}, Lcom/ipaynow/wechatpay/plugin/f/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ipaynow/wechatpay/plugin/f/a/a;->bD:Lcom/ipaynow/wechatpay/plugin/f/a/a;

    new-instance v0, Lcom/ipaynow/wechatpay/plugin/f/a/a;

    const-string v1, "UNKNOWN"

    const-string v2, "3"

    invoke-direct {v0, v1, v6, v2}, Lcom/ipaynow/wechatpay/plugin/f/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ipaynow/wechatpay/plugin/f/a/a;->bE:Lcom/ipaynow/wechatpay/plugin/f/a/a;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ipaynow/wechatpay/plugin/f/a/a;

    sget-object v1, Lcom/ipaynow/wechatpay/plugin/f/a/a;->bB:Lcom/ipaynow/wechatpay/plugin/f/a/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ipaynow/wechatpay/plugin/f/a/a;->bC:Lcom/ipaynow/wechatpay/plugin/f/a/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ipaynow/wechatpay/plugin/f/a/a;->bD:Lcom/ipaynow/wechatpay/plugin/f/a/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ipaynow/wechatpay/plugin/f/a/a;->bE:Lcom/ipaynow/wechatpay/plugin/f/a/a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ipaynow/wechatpay/plugin/f/a/a;->bF:[Lcom/ipaynow/wechatpay/plugin/f/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-object p3, p0, Lcom/ipaynow/wechatpay/plugin/f/a/a;->g:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/f/a/a;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/ipaynow/wechatpay/plugin/f/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/wechatpay/plugin/f/a/a;

    return-object v0
.end method

.method public static values()[Lcom/ipaynow/wechatpay/plugin/f/a/a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/f/a/a;->bF:[Lcom/ipaynow/wechatpay/plugin/f/a/a;

    array-length v1, v0

    new-array v2, v1, [Lcom/ipaynow/wechatpay/plugin/f/a/a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/f/a/a;->g:Ljava/lang/String;

    return-object v0
.end method
