.class public final enum Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;
.super Ljava/lang/Enum;
.source "GamePlatformConstans.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/sdk/platform/GamePlatformConstans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Country"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

.field public static final enum China:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

.field public static final enum Taiwan:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    const-string v1, "China"

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;->China:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    .line 7
    new-instance v0, Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    const-string v1, "Taiwan"

    invoke-direct {v0, v1, v3}, Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;->Taiwan:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    sget-object v1, Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;->China:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;->Taiwan:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;->$VALUES:[Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    return-object v0
.end method

.method public static values()[Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;->$VALUES:[Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    invoke-virtual {v0}, [Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    return-object v0
.end method
