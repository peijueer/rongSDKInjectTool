.class public final enum Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;
.super Ljava/lang/Enum;
.source "GamePayApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyigame/single/sdk/GamePayApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaymentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;

.field public static final enum ALIPAY:Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;

.field public static final enum BANKCARD:Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;

.field public static final enum WEBCHAT:Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;

    const-string v1, "ALIPAY"

    invoke-direct {v0, v1, v2}, Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;->ALIPAY:Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;

    .line 8
    new-instance v0, Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;

    const-string v1, "BANKCARD"

    invoke-direct {v0, v1, v3}, Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;->BANKCARD:Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;

    .line 9
    new-instance v0, Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;

    const-string v1, "WEBCHAT"

    invoke-direct {v0, v1, v4}, Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;->WEBCHAT:Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;

    sget-object v1, Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;->ALIPAY:Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;->BANKCARD:Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;->WEBCHAT:Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;->$VALUES:[Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;

    return-object v0
.end method

.method public static values()[Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;->$VALUES:[Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;

    invoke-virtual {v0}, [Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;

    return-object v0
.end method
