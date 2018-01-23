.class public final enum Lcom/ipaynow/wechatpay/plugin/conf/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lcom/ipaynow/wechatpay/plugin/conf/a;

.field public static final enum d:Lcom/ipaynow/wechatpay/plugin/conf/a;

.field public static final enum e:Lcom/ipaynow/wechatpay/plugin/conf/a;

.field public static final enum f:Lcom/ipaynow/wechatpay/plugin/conf/a;

.field private static final synthetic h:[Lcom/ipaynow/wechatpay/plugin/conf/a;


# instance fields
.field private g:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/ipaynow/wechatpay/plugin/conf/a;

    const-string v1, "CALL_MHT_SUCCESS"

    const-string v2, "\u4ea4\u6613\u6210\u529f"

    const-string v3, "00"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/ipaynow/wechatpay/plugin/conf/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ipaynow/wechatpay/plugin/conf/a;->c:Lcom/ipaynow/wechatpay/plugin/conf/a;

    .line 5
    new-instance v0, Lcom/ipaynow/wechatpay/plugin/conf/a;

    const-string v1, "CALL_MHT_FAIL"

    const-string v2, "\u4ea4\u6613\u5931\u8d25"

    const-string v3, "01"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/ipaynow/wechatpay/plugin/conf/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ipaynow/wechatpay/plugin/conf/a;->d:Lcom/ipaynow/wechatpay/plugin/conf/a;

    .line 6
    new-instance v0, Lcom/ipaynow/wechatpay/plugin/conf/a;

    const-string v1, "CALL_MHT_CANCEL"

    const-string v2, "\u4ea4\u6613\u53d6\u6d88"

    const-string v3, "02"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/ipaynow/wechatpay/plugin/conf/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ipaynow/wechatpay/plugin/conf/a;->e:Lcom/ipaynow/wechatpay/plugin/conf/a;

    .line 7
    new-instance v0, Lcom/ipaynow/wechatpay/plugin/conf/a;

    const-string v1, "CALL_MHT_UNKNOWN"

    const-string v2, "\u4ea4\u6613\u672a\u77e5"

    const-string v3, "03"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/ipaynow/wechatpay/plugin/conf/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ipaynow/wechatpay/plugin/conf/a;->f:Lcom/ipaynow/wechatpay/plugin/conf/a;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ipaynow/wechatpay/plugin/conf/a;

    sget-object v1, Lcom/ipaynow/wechatpay/plugin/conf/a;->c:Lcom/ipaynow/wechatpay/plugin/conf/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ipaynow/wechatpay/plugin/conf/a;->d:Lcom/ipaynow/wechatpay/plugin/conf/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ipaynow/wechatpay/plugin/conf/a;->e:Lcom/ipaynow/wechatpay/plugin/conf/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ipaynow/wechatpay/plugin/conf/a;->f:Lcom/ipaynow/wechatpay/plugin/conf/a;

    aput-object v1, v0, v7

    sput-object v0, Lcom/ipaynow/wechatpay/plugin/conf/a;->h:[Lcom/ipaynow/wechatpay/plugin/conf/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/conf/a;->g:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/conf/a;->name:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/ipaynow/wechatpay/plugin/conf/a;->g:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/ipaynow/wechatpay/plugin/conf/a;->name:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/conf/a;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/ipaynow/wechatpay/plugin/conf/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/wechatpay/plugin/conf/a;

    return-object v0
.end method

.method public static values()[Lcom/ipaynow/wechatpay/plugin/conf/a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/conf/a;->h:[Lcom/ipaynow/wechatpay/plugin/conf/a;

    array-length v1, v0

    new-array v2, v1, [Lcom/ipaynow/wechatpay/plugin/conf/a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/conf/a;->g:Ljava/lang/String;

    return-object v0
.end method
